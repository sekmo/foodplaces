class AddDefaultValueToDishType < ActiveRecord::Migration[5.1]
  def change
    change_column :dishes, :dish_type, :integer, default: 0
  end
end
