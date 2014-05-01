class Product < ActiveRecord::Base
  attr_accessible :category, :description, :price, :product_name, :quantity
  has_one :image
end
