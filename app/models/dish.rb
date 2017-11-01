class Dish < ApplicationRecord
  belongs_to :restaurant
  has_one :kitchen
  enum type:{
    "Meat"     => 0,
    "Vegetarian" => 1,
    "Vegan"      => 2
  }

  validates :name, :price, presence: true
  validates :type, inclusion: types.keys
end
