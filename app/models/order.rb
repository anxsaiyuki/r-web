class Order < ActiveRecord::Base
  attr_accessible :user_id, :customer_name, :order_type


end 	
