class ChangeColumnDataTypeToTickets < ActiveRecord::Migration
  def change
    change_column :tickets, :seat_no, :string
  end
end
