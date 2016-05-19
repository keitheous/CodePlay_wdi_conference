class DeleteColumnLocationToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :location
    remove_column :tickets, :user_id
    add_column :event_speakers, :application_status, :string
  end
end
