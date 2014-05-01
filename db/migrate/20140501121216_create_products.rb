class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.string :category
      t.integer :quantity
      t.string :description

      t.timestamps
    end
  end
end
