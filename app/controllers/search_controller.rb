class SearchController < ApplicationController
  
  def index
	@user = User.new
	p "============================="
	p params[:key]

	p "============================="
	@category_name = Product.find_by_category(params[:id])

	if params[:pack].nil?
		@category = Product.select("category, pack_number").uniq.find_all_by_category(params[:id])
		@product = Product.includes(:image).where(category: params[:id]).page(params[:page]).per(25)
	else
		@category = Product.select("category, pack_number").uniq.find_all_by_category(params[:id])
		@product = Product.includes(:image).where(category: params[:id], pack_number: params[:pack]).page(params[:page]).per(25)
	end 

	unless @category_name.nil?
		if params[:pack].nil?
			@category = Product.select("category, pack_number").uniq.find_all_by_category(params[:id])
			@product = Product.includes(:image).where(category: params[:id]).page(params[:page]).per(25)
		else
			@category = Product.select("category, pack_number").uniq.find_all_by_category(params[:id])
			@product = Product.includes(:image).where(category: params[:id], pack_number: params[:pack]).page(params[:page]).per(25)
		end 
	end
  end

end
