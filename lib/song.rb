require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end

#Song class inherits from InteractiveRecord. This means that all of the methods defined in InteractiveRecord are available to Song.
