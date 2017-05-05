require_relative "./interactive_record.rb"

class Song < InteractiveRecord
  #uses attr_accessors inherited from the InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end
