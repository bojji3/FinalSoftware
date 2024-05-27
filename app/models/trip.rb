class Trip < ApplicationRecord
  belongs_to :bus
  has_many :reservations
  has_many :passengers, through: :reservations
end
