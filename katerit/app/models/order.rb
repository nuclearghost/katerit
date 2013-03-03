class Order < ActiveRecord::Base
  attr_accessible :event_address, :event_datetime, :user_id, :quantities_attributes

  belongs_to :user

  has_many :quantities
  has_many :dishes, :through => :quantities

  accepts_nested_attributes_for :quantities,
  	:reject_if => :all_blank,
  	:allow_destroy => false
  accepts_nested_attributes_for :dishes

end
