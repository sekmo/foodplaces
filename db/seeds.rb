# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.create(name: "Tim Raue",
                  address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
                  kitchen_type: "Asian fusion")

Restaurant.create(name: "Madang Restauran",
                  address: "Gneisenaustraße 8, 10961 Berlin",
                  kitchen_type: "Korean")

Restaurant.create(name: "Facil",
                  address: "Potsdamer Straße 3, 10785 Berlin",
                  kitchen_type: "French")

Restaurant.create(name: "Baraka",
                  address: "Lausitzer Pl. 6, 10997 Berlin",
                  kitchen_type: "Egiptian")

Restaurant.create(name: "Monsieur Vuong",
                  address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
                  kitchen_type: "Vietnamese")

Restaurant.create(name: "Yogi",
                  address: "Rochstraße 5, 10178 Berlin",
                  kitchen_type: "Vietnamese")



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
