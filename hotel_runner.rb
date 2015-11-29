require 'pry-byebug'

require_relative 'hotel'
require_relative 'guests'
require_relative 'rooms'

hotel = Hotel.new 'B&B'

 # create rooms
 room_1 = Room.new(number: 1, type: 'Single')
 hotel.add_room(room_1)

 # list rooms
 puts "All rooms: #{hotel.list_rooms}"

 # create guests
 guest_1 = Guest.new("Jane")
 hotel.add_guest(guest_1)

 # list guests
 puts "All guests: #{hotel.list_guests}"

 # TODO: check in rooms
 # TODO: check out rooms
 # TODO: list occupied/vacant rooms
 binding.pry;''