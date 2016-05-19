class AddColumnToEventSpeakers < ActiveRecord::Migration
  def change
    add_column :event_speakers, :content, :text
  end
end
