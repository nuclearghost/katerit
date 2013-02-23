class Picture < ActiveRecord::Base
  attr_accessible :dish_id, :restaurant_id, :url

  belongs_to :restaurant
  belongs_to :dish
end
