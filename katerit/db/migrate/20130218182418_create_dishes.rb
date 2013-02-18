class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :serves
      t.decimal :price
      t.integer :restaurant_id
      t.integer :category_id

      t.timestamps
    end
  end
end
