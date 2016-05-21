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

   Ticket.destroy_all
   EventSpeaker.destroy_all

   Seat.destroy_all
   SeatType.destroy_all
   Event.destroy_all
   User.destroy_all
   UserType.destroy_all

# user_types table

UserType.create(group:"admin");
UserType.create(group:"speaker");
UserType.create(group:"user");

# # users table

User.create(name:"chris",password:"pudding",email:"chris@email.com",img:"http://cdn.playbuzz.com/cdn/5e397046-e4ee-47e8-aba3-f899369d3bca/91747011-8c2d-4a3e-ba4f-a30a30fa2538.jpg",desc:"a marvel super hero",user_type_id:"2");
User.create(name:"emily",password:"pudding",email:"emily@email.com",img:"http://static.independent.co.uk/s3fs-public/styles/story_medium/public/thumbnails/image/2015/10/06/16/Emily-Blunt-Sicario-Getty.jpg",desc:"the ice queen before snow white", user_type_id:"1");
User.create(name:"dt",password:"pudding",email:"dt@email.com",img:"https://lh6.googleusercontent.com/-NexV0Dm1_F0/AAAAAAAAAAI/AAAAAAAAHGI/7DvCNSvabw4/s0-c-k-no-ns/photo.jpg",desc:"a wizard", user_type_id:"3");
User.create(name:"swanny",password:"pudding",email:"dt@email.com",img:"http://www.eonline.com/eol_images/Entire_Site/2010614/293.ruffalo.mark.lc.071410.jpg",desc:"the hulk", user_type_id:"3");

# # events table

Event.create(name:"ruby", time:"2016-7-23 00:00:00", total_seats:"50");
Event.create(name:"javascript", time:"2016-7-23 00:00:00", total_seats:"80");
Event.create(name:"css", time:"2016-7-23 00:00:00", total_seats:"60");
Event.create(name:"html", time:"2016-7-23 00:00:00", total_seats:"40");

# # seat type table
SeatType.create(group:"Premium", price:"125");
SeatType.create(group:"General", price:"75");
# seat_type
#     seat_type = SeatType.new
#     seat_type.group = "Premium"
#     seat_type.price = 125
#     seat_type.save
#
#     seat_type = SeatType.new
#     seat_type.group = "General"
#     seat_type.price = 75
#     seat_type.save



# # ticket table
# Ticket.create(email:"keith@ga.com",stripe_token:"stripetoken1");
# Ticket.create(email:"chris@ga.com",stripe_token:"stripetoken2");
# leaving this out cause its not related to other functions

# # event speakers table
EventSpeaker.create(topic:"Enthusiastically target equity invested e-commerce ",event_id:"1",application_status:"applying",content:"As cross as a sanger no dramas lets throw a fairy floss. He's got a massive ropeable flamin gutful of bull bar. As cunning as a cracker how she'll be right dead dingo's donger. She'll be right bottlo my lets throw a rack off. As cross as a two up how as cunning as a clucky. She'll be right esky my stands out like a cut lunch commando. It'll be postie no worries grab us a pig's arse. Lets throw a rego to she'll be right not my bowl of rice. Grab us a piker with get a dog up ya christmas. She'll be right shit house flamin as cunning as a cut lunch commando.

He's got a massive hottie when built like a tinny. He hasn't got a mozzie with as dry as a muster. He's got a massive vee dub with as busy as a bush oyster. Trent from punchy tucker-bag heaps stands out like a no-hoper. He hasn't got a gutta mate grab us a his blood's worth bottling. Get a dog up ya dunny mate flat out like a pretty spiffy. Trent from punchy rotten flamin bush bash. Built like a jug where you little ripper mate's rate. ",user_id:"3");

EventSpeaker.create(topic:"continually reinvent standards compliant intellectual capital  ",event_id:"2",application_status:"applying",content:"Pike furl plunder pillage Sea Legs coxswain lanyard interloper swab parley. Rutters warp avast jolly boat bounty rigging cable yardarm bilge rat snow. Jack Tar wench lugsail chantey coxswain Buccaneer parrel lad Sea Legs belay.

Spirits fire in the hole warp careen line landlubber or just lubber clap of thunder interloper smartly hail-shot. Ho Blimey schooner Sea Legs capstan matey barkadeer bilge case shot shrouds. Chandler matey Privateer cable gangplank tackle black jack salmagundi lee list.

Come about chandler bilged on her anchor landlubber or just lubber gally walk the plank fluke ahoy draft coffer. Port draft capstan interloper fluke chase guns ahoy line Jack Ketch sloop. Gaff me crow's nest bilged on her anchor jack Letter of Marque hempen halter gibbet gunwalls parley. ",user_id:"4");

EventSpeaker.create(topic:"uniquely target client-cantered",event_id:"3",application_status:"applying",content:"Meowzer! hate dog, yet if it smells like fish eat as much as you wish. Thug cat i like big cats and i can not lie and need to chase tail, so tuxedo cats always looking dapper brown cats with pink ears for sweet beast. Where is my slave? I'm getting hungry always hungry. Destroy couch make muffins, yet pooping rainbow while flying in a toasted bread costume in space so love to play with owner's hair tie, but hide at bottom of staircase to trip human make meme, make cute face. Vommit food and eat it again damn that dog stand in front of the computer screen, for scratch at the door then walk away lick the other cats so hopped up on catnip, and make meme, make cute face. Love to play with owner's hair tie sleep on keyboard, or howl uncontrollably for no reason, throwup on your pillow refuse to drink water except out of someone's glass. Loves cheeseburgers. ",user_id:"4");

EventSpeaker.create(topic:"proactively grow bleeding-edge methods of empowerment ",event_id:"3",application_status:"applying",content:" Felis cappuccino catcher helllloooo um yesbaby brad pitt? Educated helllloooo vincent price clive dunn kris kristofferson. tom selleck, vincent price helllloooo man of the year 1986 tom selleck dolor sit amet clive dunn educated furry facial friend dolor sit amet kris kristofferson., john cleese furry facial friend vincent price theodore roosevelt clive dunn alpha trion dolor sit amet super mario tom selleck kris kristofferson. dolor sit amet man of the year 1986 admiral educated helllloooo.",user_id:"3");

# # Seats table ??

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
#
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
      seat.seat_type_id = 9
    else
      seat.seat_type_id = 10
    end
    seat.save
  end

  return seats_arr
end
generate_seats(50, 10)
