require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end
#everything else found in IR class, need to just use this to make columns specifically for song table
end
