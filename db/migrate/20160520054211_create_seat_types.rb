class CreateSeatTypes < ActiveRecord::Migration
  def change
    create_table :seat_types do |t|
      t.string :group
      t.string :price

      t.timestamps null: false
    end
  end
end
