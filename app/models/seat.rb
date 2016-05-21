class Seat < ActiveRecord::Base
  belongs_to :seat
  belongs_to :ticket
  belongs_to :event
end
