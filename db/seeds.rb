# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#=====  test data ========
# clear all data in the database
# keeping this delete order is very important,bec there are FK relationship
#    Ticket.destroy_all
#    EventSpeaker.destroy_all
#    Event.destroy_all
#    Speaker.destroy_all
#    TicketType.destroy_all
#    User.destroy_all
#    UserType.destroy_all
#
# # user_types table
#     type = UserType.new
#     type.name = 'common user'
#     type.save
#     type2 = UserType.new
#     type2.name = 'admin user'
#     type2.save
# # users table
#     user = User.new
#     user.name = 'DT'
#     user.email = 'dt@ga.com'
#     user.password = '1234'
#     user_type_id = type.id
#     user2 = User.new
#     user2.name = 'emily'
#     user2.email = 'emily@ga.com'
#     user2.password = '1234'
#     user2.user_type_id = type2.id
#
# # events table
#     event = Event.new
#     event.time = '2016-6-1 20:12:12'
#     event.name = 'javascript'
#     event.location = 'CBD'
#
#     event2 = Event.new
#     event2.time = '2016-5-25 20:12:12'
#     event2.name = 'RUBY'
#     event2.location = 'CBD'
#
#     event3 = Event.new
#     event3.time = '2016-6-14 20:12:12'
#     event3.name = 'CSS'
#     event3.location = 'CBD'
#
#     event4 = Event.new
#     event4.time = '2016-7-1 20:12:12'
#     event4.name = 'NODE.JS'
#     event4.location = 'CBD'

# seat_type
    seat_type = SeatType.new
    seat_type.group = "Premium"
    seat_type.price = 125
    seat_type.save

    seat_type = SeatType.new
    seat_type.group = "General"
    seat_type.price = 75
    seat_type.save

# create seats in Seats table

# seats_arr = []
# row_arr = ('A'..'Z').to_a
#
# 5.times do |row|
#   10.times do |seat_num|
#     seat_num = seat_num + 1
#     seats_arr<<row_arr[row]+seat_num.to_s
#   end
# end
#
# 50.times do |seat_num|
#   seat = Seat.new
#   seat.seat_num = seats_arr[seat_num]
#   seat.status = "available"
#   if seats_arr[seat_num][0] == "A"
#     seat.seat_type_id = 9
#   else
#     seat.seat_type_id = 10
#   end
#   seat.save
# end

def generate_seats(num_of_tickets, seats_per_row)
  seats_arr = []
  row_arr = ('A'..'Z').to_a
  num_of_rows = num_of_tickets / seats_per_row

  num_of_rows.times do |row|
    seats_per_row.times do |seat_num|
      seat_num = seat_num + 1
      seats_arr<<row_arr[row]+seat_num.to_s
    end
  end

  num_of_tickets.times do |seat_num|
    seat = Seat.new
    seat.seat_num = seats_arr[seat_num]
    seat.status = "available"
    if seats_arr[seat_num][0] == "A"
      seat.seat_type_id =  SeatType.find_by(group: "Premium").id
    else
      seat.seat_type_id =  SeatType.find_by(group: "General").id
    end
    seat.save
  end

  return seats_arr
end
generate_seats(50, 10)
