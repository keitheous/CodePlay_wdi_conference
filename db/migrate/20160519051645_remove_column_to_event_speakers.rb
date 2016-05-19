class RemoveColumnToEventSpeakers < ActiveRecord::Migration
  def change
    remove_column :event_speakers, :speaker_id
  end
end
