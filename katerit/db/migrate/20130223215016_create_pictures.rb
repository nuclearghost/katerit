class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.integer :restaurant_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
