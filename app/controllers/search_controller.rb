class SearchController < ApplicationController
  
  def index
	@user = User.new
	p "============================="
	p params[:key]

	p "============================="
		@product = Product.includes(:image).where("product_name like ?", "%#{params[:key]}%").page(params[:page]).per(25)
	p @product
  end

end
