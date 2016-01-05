require_relative "./interactive_record.rb"

class Song < InteractiveRecord
  # creates attr_accessors for Song class
  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end

