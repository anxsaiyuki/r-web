class CreateProducts < ActiveRecord::Migration
  def change
		create_table :products do |t|
			t.string :product_name
			t.integer :price
			t.integer :quantity
			t.string :description
			t.string :product_number
			t.integer :pack_number
			t.integer :category
			
			t.timestamps
		end
	
	end

end
