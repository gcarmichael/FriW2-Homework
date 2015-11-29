require 'pry-byebug'

require_relative 'hotel'
require_relative 'guests'
require_relative 'rooms'

hotel = Hotel.new 'No Room for Dino'

 # create rooms
 room_1 = Room.new(number: 1, type: 'Single')
 hotel.add_room(room_1)

 hotel.add_room(Room.new(number: 2, type: "Single"))
 hotel.add_room(Room.new(number: 3, type: "Single"))
 hotel.add_room(Room.new(number: 4, type: "Double"))
 hotel.add_room(Room.new(number: 5, type: "Double"))
 hotel.add_room(Room.new(number: 6, type: "Double"))

 # list rooms
 puts "All rooms: #{hotel.list_rooms}\n"

 # create guests
 guest_1 = Guest.new("Jane")
 hotel.add_guest(guest_1)

 hotel.add_guest(Guest.new('Fred'))
 hotel.add_guest(Guest.new('Wilma'))
 hotel.add_guest(Guest.new('Barney'))
 hotel.add_guest(Guest.new('Betty'))

 # list guests
 puts "All guests: #{hotel.list_guests}\n"

 # check in rooms
 guest_name = "Wilma"
 room_number = 2
 hotel.check_in(guest_name, room_number)

 puts "\nAll people after check-in: #{hotel.list_guests}\n"
 puts "\nAll rooms after check-in: #{hotel.list_rooms}\n"
 # Find where the double ' are coming from in the output!

 # check out rooms
 hotel.check_out(guest_name, room_number)

 # list occupied/vacant rooms
 puts hotel.list_occupied_rooms

 binding.pry;''

 # We're going to need to model individual hotels, and their rooms -- they can have single or double-rooms. The hotel shold be able to tell us it's capacity.
 # Works

 # We also need guests. Guests need to be able check in to rooms at the hotel, and check out at the end of their stays.
 # Works

 # Ensure we don't double-book rooms, or over-fill hotels.
 # Works - guest list (hotel.list_guests) still reports as checked-in while room list doesn't. Not sure how to fix  but I know it's because the guest list is pulling @rooms.size.

 # The management are going to need reporting on the occupancy, and the revenue (assuming rooms have rates? or at least a standard rate single/double) for the day.
 # Not sure if I would add an additional key to the rooms with their value. Probably more efficient to add an enumerator which iterates and assigns a room rate based on the :type found. Check previous bank account examples.