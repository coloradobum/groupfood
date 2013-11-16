json.array!(@trips) do |trip|
  json.extract! trip, :trip_name
  json.url trip_url(trip, format: :json)
end
