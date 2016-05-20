class DropTicketTypeTable < ActiveRecord::Migration
  def change
    drop_table :ticket_types 
  end
end
