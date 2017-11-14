json.array! @restaurants do |restaurant|
  json.latitude restaurant.latitude
  json.longitude restaurant.longitude
  json.title restaurant.name
end
