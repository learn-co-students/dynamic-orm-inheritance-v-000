require_relative "./interactive_record.rb"

class Song < InteractiveRecord
  
  self.column_names.each do |col_name| #doesnt inherit InteractiveRecord's self.column_names.each since its not a method
    attr_accessor col_name.to_sym
  end

end

