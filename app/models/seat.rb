class Seat < ActiveRecord::Base
  belongs_to :seat_type
  belongs_to :ticket
  belongs_to :event
end
