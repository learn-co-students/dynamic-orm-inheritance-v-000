require_relative "./interactive_record.rb"

class Song < InteractiveRecord

  self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end

end

song = Song.new(name: "Hello", album: "25")
puts "song name: " + song.name
puts "song album: " + song.album
song.save
 
puts Song.find_by_name("Hello")
