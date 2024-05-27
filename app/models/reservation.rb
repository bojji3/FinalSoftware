class Reservation < ApplicationRecord
  belongs_to :passenger
  belongs_to :trip

  after_create :update_trip_stats

  private

  def update_trip_stats
    trip.update(
      number_of_passengers: trip.reservations.count,
      total_fare: trip.reservations.count * trip.unit_fare
    )
  end
end
