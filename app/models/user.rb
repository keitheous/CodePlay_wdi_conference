class User < ActiveRecord::Base
  belongs_to :user_type
  has_many :event_speakers, dependent: :destroy
  has_many :events, through: :event_speakers
  has_secure_password
end
