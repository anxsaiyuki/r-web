class Product < ActiveRecord::Base
  attr_accessible :category, :price, :product_name
  has_one :image
  validate :allow_nil => true, :presence => true
end
