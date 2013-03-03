class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.integer :order_id
      t.integer :dish_id
      t.integer :amount

      t.timestamps
    end
  end
end
