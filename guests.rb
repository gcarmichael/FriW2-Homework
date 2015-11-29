class Guest
  attr_reader :name, :rooms

  def initialize(name)
    @name = name
    @rooms = {}
  end

  def occupy(room)
    @rooms[room.number] = room
  end

  def vacate(room_number)
    @rooms.delete(room_number)
  end

  def list_rooms
    return "'#{name}'' is not checked-in" if @rooms.empty?
    room_strings_array = rooms.map do |key, room|
      room.pretty_string
    end
    rooms_string = room_strings_array.join("\n")
    "'#{name}' is checked into room number #{rooms_string}"
  end

  def pretty_string
    "'#{@name}' is checked into #{@rooms.size} room#{'s' unless rooms.size == 1} at the moment."
  end

end