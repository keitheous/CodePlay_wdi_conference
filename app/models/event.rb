class Event < ActiveRecord::Base
  has_many :seats, dependent: :destroy
  has_many :event_speakers, dependent: :destroy
  has_many :users, through: :event_speakers
end
