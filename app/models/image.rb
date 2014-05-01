class Image < ActiveRecord::Base
  attr_accessible :image_path, :product_id
  belongs_to :product
end
