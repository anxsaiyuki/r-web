class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :price
      t.integer :quantity
      t.integer :status

      t.timestamps
    end
  end
end
