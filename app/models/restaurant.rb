class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy
  accepts_nested_attributes_for :dishes

  validates :name, presence: true
  validates :kitchen_type, presence: true
  validates :address, presence: true
end
