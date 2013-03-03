class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :event_address
      t.datetime :event_datetime

      t.timestamps
    end
  end
end
