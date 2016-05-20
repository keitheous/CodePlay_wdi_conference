class Seat < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :event
end
