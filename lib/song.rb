require_relative "./interactive_record.rb"

class Song < InteractiveRecord #inherits all the methods

  self.column_names.each do |col_name| #Only thing to change is specific attr_accessor 
    attr_accessor col_name.to_sym
  end

end
