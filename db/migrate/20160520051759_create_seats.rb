class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :seat_num
      t.string :status
      t.references :ticket, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
