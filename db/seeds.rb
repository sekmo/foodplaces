# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do
  kitchen_type = ["Indian", "Vietnamese", "Pizza", "Japanese", "German", "Japanese-Chinese fusion"].sample
  Restaurant.create(name: Faker::Book.title,
                    address: Faker::Address.street_address + " " + Faker::Address.zip_code + " Berlin",
                    kitchen_type: kitchen_type)
end

Restaurant.all.each do |restaurant|
  6.times do
    price = (rand(100) + 60.0) / 10
    gluten_free = [true, false].sample
    type = ["Meat", "Vegetarian", "Vegan"].sample
    Dish.create!(restaurant: restaurant,
                name: Faker::Food.dish, price: price,
                gluten_free: gluten_free,
                dish_type: type)
  end
end
