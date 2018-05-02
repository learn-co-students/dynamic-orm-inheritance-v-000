require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  self.column_names.each do |col_names|
    attr_accessor col_names.to_sym
  end

end
