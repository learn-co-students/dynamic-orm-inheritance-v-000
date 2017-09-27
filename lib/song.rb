require_relative "./interactive_record.rb"
#inherits, song is the child 
class Song < InteractiveRecord
#col_name come from interactiverecord
  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end
