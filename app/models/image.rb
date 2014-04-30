class Image < ActiveRecord::Base
  attr_accessible :image_name, :product_id
  belongs_to :product
  validate :image_name, :allow_nil => true
end
