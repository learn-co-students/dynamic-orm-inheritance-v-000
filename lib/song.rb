require_relative "./interactive_record.rb"

class Song < InteractiveRecord  #inherits from interactive record

  self.column_names.each do |col_name| #inherites from superclass
    attr_accessor col_name.to_sym
  end

end
