class RenameDescriptionInRestaurants < ActiveRecord::Migration[5.1]
  def change
    rename_column :restaurants, :description, :kitchen_type
  end
end
