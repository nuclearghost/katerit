class Quantity < ActiveRecord::Base
  attr_accessible :amount, :dish_id, :dish_attributes

  belongs_to :order
  belongs_to :dish

  accepts_nested_attributes_for :dish,
  								:reject_if => :all_blank
end
