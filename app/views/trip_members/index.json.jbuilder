json.array!(@trip_members) do |trip_member|
  json.extract! trip_member, :name, :trip_id, :expenses, :description
  json.url trip_member_url(trip_member, format: :json)
end
