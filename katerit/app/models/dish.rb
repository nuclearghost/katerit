class Dish < ActiveRecord::Base
  attr_accessible :category_id, :name, :price, :restaurant_id, :serves, :description

  belongs_to :restaurant
  belongs_to :category

  has_many :pictures

  has_many :quantities
  has_many :orders, through: :quantities
end
