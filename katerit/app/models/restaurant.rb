class Restaurant < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :website
end
