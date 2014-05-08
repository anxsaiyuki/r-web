class CreateImages < ActiveRecord::Migration
  def change
		create_table :images do |t|
			t.string :image_path
			t.belongs_to :product
			
			 t.timestamps
		end
	end

end
