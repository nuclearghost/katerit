class Restaurant < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :website

  has_many :dishes
end
