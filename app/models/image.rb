class Image < ActiveRecord::Base
  belongs_to :product
  attr_accessible :image_name, :product_id
  validates_presence_of :image_name #you can do custom validations too if you want to
end

=begin

when creating a new image to associate to a product, you do not need to do
	product = Product.find(some_id)
	image = Image.create(image_name: "some_image_name")
	product.images << image


all you need to do is:
	product = Product.find(some_id)
	product.images.create(image_name: "some_image_name")
and they will be associated together automatically


if there are going to be some unique entries, and you want to do create OR find in one step, you can do:
	product = Product.find_or_create_by_product_name(product_name_here)


keep in mind ActiveRecord's find and create methods are meta programming, so for example:
	product = Product.find_or_create_by_product_name(product_name_here) #finds by column product_name
	product = Product.find_or_create_by_product_type(product_type_here) #finds by column product_type
meaning if I had a column called cheese_cake_explosion, you can
	product = Product.find_or_create_by_cheese_cake_explosion(whatever_you_are_searching_for_here)


There is also a pretty big difference between .update and .save, 
and they affect performance pretty drastically. Look it up before determining which one to go with.


And lastly, and most importantly, ActiveRecord association is based off GRAMMER, so for example
I have a model/table called product, and another called image

	image belongs_to product <---singular
	product has_many images <---plural

And I believe ActiveRecord is smart enough for special cases like 'sheep' as well


=end