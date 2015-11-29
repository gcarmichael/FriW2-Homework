class Hotel
  attr_reader :name, :rooms, :guests

  def initialize(name)
    @name = name
    @rooms = {}
    @guests = {}
  end

  def add_room(room)
   @rooms[room.number] = room
 end

 def list_rooms
   if @rooms.empty?
     "There are no occupied rooms in the hotel at the moment"
   else
     room_strings = @rooms.map do |key, room|
       room.pretty_string
     end
     room_strings.join("\n")
   end
 end

end