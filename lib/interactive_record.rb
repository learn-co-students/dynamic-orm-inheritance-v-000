require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
# notes: grabs us the table name we want to query for column names,
  def self.table_name
    self.to_s.downcase.pluralize
  end

  def self.column_names
    DB[:conn].results_as_hash = true

# Query a table for the name of its colums => return the result as a hash
    sql = "pragma table_info('#{table_name}')"

    table_info = DB[:conn].execute(sql)
    column_names = []
    table_info.each do |row|
# iterate over the hash and GRIP only the column_names in the hash
      column_names << row["name"]
    end

# removes at nil value in out return hash code with compact
    column_names.compact
  end

  def initialize(options={})
    # initialize method take a hash and uses .send to interpolate the name of each key as method
    #  that we set to that key value.
    options.each do |property, value|
      self.send("#{property}=", value)
    end
  end

  def save
    sql = "INSERT INTO #{table_name_for_insert} (#{col_names_for_insert}) VALUES (#{values_for_insert})"
    DB[:conn].execute(sql)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM #{table_name_for_insert}")[0][0]
  end

  def table_name_for_insert
# we uses this to abstract the table name and use our save method.
    self.class.table_name
  end

  def values_for_insert
#  we grab the values to insert by grabbing the values of that instance's attr_reader
# name of attr_accessor is derived from column_names
    values = []
    self.class.column_names.each do |col_name|
      values << "'#{send(col_name)}'" unless send(col_name).nil?
    end
    values.join(", ")
  end

  def col_names_for_insert
# save our Ruby object, we should not include the id column name or insert a value for the id column.
# Therefore, we need to remove "id" from the array of column names returned from the method because our method auto-include id for us
# we use .join to get "name, album"
    self.class.column_names.delete_if {|col| col == "id"}.join(", ")
  end

  def self.find_by_name(name)
    sql = "SELECT * FROM #{self.table_name} WHERE name = '#{name}'"
    DB[:conn].execute(sql)
  end

end
