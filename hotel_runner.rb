require 'pry-byebug'

require_relative 'hotel'
require_relative 'guests'
require_relative 'rooms'

hotel = Hotel.new 'B&B'

 # TODO: create rooms
 room_1 = Room.new(number: 1, type: 'Single')
 hotel.add_room(room_1)
 # TODO: list rooms
 puts "All rooms: #{hotel.list_rooms}"
 # TODO: create guests
 # TODO: list guests
 # TODO: check in rooms
 # TODO: check out rooms
 # TODO: list occupied/vacant rooms
 binding.pry;''