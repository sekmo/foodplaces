class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  has_many :dishes
end
