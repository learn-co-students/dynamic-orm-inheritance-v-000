require_relative "./interactive_record.rb"

class Song < InteractiveRecord #the Song class inherits from InteractiveRecord. This means that ll of the methods defined in InteractiveRecord are available to Song.

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end

#The only code the Song class needs to contain is the code to create the attr_accessors specific to itself. But even that code uses a method, #column_names, inherited from the super class.