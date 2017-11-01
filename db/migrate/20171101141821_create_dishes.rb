class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :price
      t.boolean :gluten_free
      t.integer :type
      t.belongs_to :restaurant, foreign_key: true
      t.timestamps
    end
  end
end
