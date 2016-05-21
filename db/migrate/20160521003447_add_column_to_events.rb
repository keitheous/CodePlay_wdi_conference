class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :total_seats, :integer
  end
end
