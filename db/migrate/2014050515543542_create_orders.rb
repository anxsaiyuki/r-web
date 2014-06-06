class CreateOrders < ActiveRecord::Migration
  def change
		create_table :orders do |t|
			t.integer :user_id
			t.string :customer_name
			t.integer :order_type
			
			t.timestamps
		end
	
	end

end
