class CreateStore711s < ActiveRecord::Migration
  def change
    create_table :store711s do |t|
      t.string :city
      t.string :zone
      t.string :road
      t.string :address
      t.string :store_number
      t.string :store_name

      t.timestamps
    end
  end
end
