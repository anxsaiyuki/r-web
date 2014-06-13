class CreateStore711s < ActiveRecord::Migration
  def change
    create_table :store_711s do |t|
		t.string :city
		t.string :zone
		t.string :road
		t.string :address
		t.integer :store_number
		t.string :store_name

      t.timestamps
    end
  end
end
