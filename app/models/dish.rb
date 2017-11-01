class Dish < ApplicationRecord
  belongs_to :restaurant
  has_one :kitchen
  enum dish_type:{
    "Meat"       => 0,
    "Vegetarian" => 1,
    "Vegan"      => 2
  }

  validates :name, :price, presence: true
  validates :dish_type, inclusion: dish_types.keys
end
