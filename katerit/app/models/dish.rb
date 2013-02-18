class Dish < ActiveRecord::Base
  attr_accessible :category_id, :name, :price, :restaurant_id, :serves

  belongs_to :restaurant
  belongs_to :category
end
