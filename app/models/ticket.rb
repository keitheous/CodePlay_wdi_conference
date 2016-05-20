class Ticket < ActiveRecord::Base
  has_many :seats
end
