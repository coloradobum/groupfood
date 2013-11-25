json.array!(@members) do |member|
  json.extract! member, :name, :trip_id, :expense, :description
  json.url member_url(member, format: :json)
end
