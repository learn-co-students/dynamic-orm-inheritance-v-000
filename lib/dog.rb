require_relative "./interactive_record.rb"

class Dog < InteractiveRecord

  self.column_names.each do |col|
    attr_accessor col.to_sym
  end

end