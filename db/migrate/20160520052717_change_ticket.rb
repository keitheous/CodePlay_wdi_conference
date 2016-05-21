class ChangeTicket < ActiveRecord::Migration
  def change
    remove_column :tickets, :seat_no
    remove_column :tickets, :event_id
    remove_column :tickets, :ticket_type_id
    add_column :tickets, :email, :string
    add_column :tickets, :stripe_token, :string 
  end
end
