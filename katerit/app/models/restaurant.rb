class Restaurant < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :website, :user_id

  has_many :dishes 
  has_many :pictures

  belongs_to :users
end
