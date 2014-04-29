class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
