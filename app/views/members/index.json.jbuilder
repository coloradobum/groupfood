json.array!(@members) do |member|
  json.extract! member, :name, :expense
  json.url member_url(member, format: :json)
end
