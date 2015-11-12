json.array!(@users) do |user|
  json.extract! user, :id, :lattitude, :longitude, :city, :weather
  json.url user_url(user, format: :json)
end
