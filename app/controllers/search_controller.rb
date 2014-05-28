class SearchController < ApplicationController
  
  def index
	@user = User.new
	
	@product = Product.includes(:image).where("product_name LIKE :product_name OR product_number LIKE :product_number", {:product_name => "%#{params[:key]}%", :product_number => "%#{params[:key]}%"}).page(params[:page]).per(25)
	p "========"
	p @product
	if @product.blank?
		@error_search = 1
	else
		@error_search = 0
	end
  end

end
