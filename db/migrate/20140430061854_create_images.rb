class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :product
      t.string :image_name
      t.string :image_url

      t.timestamps
    end
  end
end

#see model for my comments on ActiveRecord