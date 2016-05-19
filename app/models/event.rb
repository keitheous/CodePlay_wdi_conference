class Event < ActiveRecord::Base
  has_many :tickets, dependent: :destroy
  has_many :event_speakers, dependent: :destroy
  has_many :users, through: :event_speakers
end
