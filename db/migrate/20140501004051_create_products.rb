class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_type
      t.text :description
      t.integer :price
      t.integer :cost

      t.timestamps
    end
  end
end

#see model for my comments on ActiveRecord