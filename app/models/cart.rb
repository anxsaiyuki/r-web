class Cart < ActiveRecord::Base
  attr_accessible :price, :product_id, :quantity, :status, :user_id
  belongs_to :product
  
  def total_value
	quantity * price
  end
  
  
   def self.add element
    if @the_array
      @the_array << element
    else
      @the_array = [element]
    end
  end
  
  
  
  
end
