require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  #this method creates the attr_accessors, drawing on code from the super class to do so
  self.column_names.each do |col_name| 
    attr_accessor col_name.to_sym
  end

end
