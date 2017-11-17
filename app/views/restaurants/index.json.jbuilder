json.array! @restaurants do |restaurant|
  json.id restaurant.id
  json.latitude restaurant.latitude
  json.longitude restaurant.longitude
  json.name restaurant.name
  json.kitchenType restaurant.kitchen_type
end
