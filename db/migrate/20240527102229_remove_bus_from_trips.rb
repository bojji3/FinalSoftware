class RemoveBusFromTrips < ActiveRecord::Migration[7.1]
  def change
    remove_column :trips, :bus, :string
  end
end
