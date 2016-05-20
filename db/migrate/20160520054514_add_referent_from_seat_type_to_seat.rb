class AddReferentFromSeatTypeToSeat < ActiveRecord::Migration
  def change
    add_reference :seats, :seat_type, index: true, foreign_key: true
  end
end
