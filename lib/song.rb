require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  self.column_names.each do |col_name|      #now our class only needs one method to set attr_accessors specific
    attr_accessor col_name.to_sym           #to this class, everything else is taken care of by :InteractiveRecord
  end

end
