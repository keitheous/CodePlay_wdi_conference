class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types do |t|
      t.string :group
      t.integer :price

      t.timestamps null: false
    end
  end
end
