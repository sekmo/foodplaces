class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy
  accepts_nested_attributes_for :dishes, reject_if: proc { |attributes| attributes["name"].blank? }

  validates :name, presence: true
  validates :kitchen_type, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end
