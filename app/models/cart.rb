class Cart < ActiveRecord::Base
  attr_accessible :price, :product_id, :quantity, :status, :user_id
  belongs_to :product
end
