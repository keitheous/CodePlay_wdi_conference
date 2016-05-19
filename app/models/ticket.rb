class Ticket < ActiveRecord::Base
  belongs_to :event
  belongs_to :ticket_type
end
