json.array! @restaurants do |restaurant|
  json.lat restaurant.latitude
  json.lng restaurant.longitude
  json.title restaurant.name
end
