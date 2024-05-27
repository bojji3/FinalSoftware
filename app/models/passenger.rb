class Passenger < ApplicationRecord
    has_many :reservations
  has_many :trips, through: :reservations   
end
