require_relative "./interactive_record.rb"

# Song class inherits from InteractiveRecord and uses all of it's methods
class Song < InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end
