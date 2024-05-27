class AddBusToTrips < ActiveRecord::Migration[7.1]
  def change
    add_reference :trips, :bus, null: false, foreign_key: true
  end
end
