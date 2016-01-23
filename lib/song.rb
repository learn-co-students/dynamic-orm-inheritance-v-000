require_relative "./interactive_record.rb"

class Song < InteractiveRecord
  #this i guess cannot put in the super class 
  #since it is not a method
  self.column_names.each do |col_name| 
    attr_accessor col_name.to_sym
  end

end

