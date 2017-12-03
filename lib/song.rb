require_relative "./interactive_record.rb"

#inherits from InteractiveRecord
class Song < InteractiveRecord

#we have to declare attr_accessors for each class so the rest of the methods work
  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end
