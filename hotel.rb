class Hotel
  attr_reader :name, :rooms, :guests

  def initialize(name)
    @name = name
    @rooms = {}
    @guests = {}
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

  def list_guests
    if @guests.empty?
      "There are no guests in the hotel right now."
    else
      guest_strings = @guests.map do |key, guest| 
        guest.pretty_string
      end
      guest_strings.join("\n")
    end
  end

  def add_room(room)
   @rooms[room.number] = room
 end

 def add_guest(guest)
    @guests[guest.name] = guest
  end

end