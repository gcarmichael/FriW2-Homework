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

  def check_in(guest_name, room_number)
     guest = @guests[guest_name]
     room = @rooms.delete(room_number)
     guest.occupy(room)
   end

   def check_out(guest_name, room_number)
     guest = @guests[guest_name]
     return "Invalid guest name" if !guest
     room = guest.vacate(room_number)
     return "Invalid room number" if !room
     add_room(room)
   end

   def list_occupied_rooms
     guests_rooms_array = @guests.map do |key, guest|
       guest.list_rooms
     end
     guests_rooms_array.join("\n")
   end

end