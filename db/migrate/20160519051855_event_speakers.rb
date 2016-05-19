class EventSpeakers < ActiveRecord::Migration
  def change
    add_reference :event_speakers, :user, index: true, foreign_key: true
  end
end
