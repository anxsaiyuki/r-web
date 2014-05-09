class Product < ActiveRecord::Base
  attr_accessible :category, :description, :price, :product_name, :quantity, :product_number, :pack_number
  has_one :image
end
