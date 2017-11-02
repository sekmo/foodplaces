FactoryGirl.define do
  factory :dish do
    name Faker::Food.dish
    price "10"
    gluten_free false
    dish_type 0
    association :restaurant
  end
end
