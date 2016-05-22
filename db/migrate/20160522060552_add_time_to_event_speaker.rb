class AddTimeToEventSpeaker < ActiveRecord::Migration
  def change
     add_column :event_speakers, :talk_time, :timestamp
  end
end
