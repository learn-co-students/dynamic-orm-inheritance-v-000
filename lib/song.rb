require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym #need to create attr_accessors specific to class but everything else can be inherited
  end

end
