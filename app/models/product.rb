class Product < ActiveRecord::Base
  attr_accessible :category, :price, :product_name
end
