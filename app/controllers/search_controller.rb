class SearchController < ApplicationController
  
  def index
	@user = User.new
	p "============================="
	p params[:key]

	p "============================="
		@product = Product.includes(:image).where("product_name LIKE :product_name OR product_number LIKE :product_number", {:product_name => "%#{params[:key]}%", :product_number => "%#{params[:key]}%"}).page(params[:page]).per(25)

	p @product
  end

end
