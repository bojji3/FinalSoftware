json.extract! trip, :id, :schedule, :origin, :destination, :number_of_passengers, :unit_fare, :total_fare, :bus, :references, :created_at, :updated_at
json.url trip_url(trip, format: :json)
