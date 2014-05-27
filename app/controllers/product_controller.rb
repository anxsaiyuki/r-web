class ProductController < ApplicationController
  
  def index
    @user = User.new
  	p params[:id]
	@product_cat = Product.select("category").find(params[:id])
	p "============================="
	p @product_cat
	p "============================="
	@category_name = @product_cat
	@category = Product.select("category, pack_number").uniq.find_all_by_category(@category_name.category)
	
	p "=========================== Mobiel =========================="
	@product = Product.includes(:image).find(params[:id])
	@cart = Cart.new
	@quantity = Array.new
	item_stock = @product.quantity
	@product.quantity.to_i.times do |i|
		@quantity << item_stock
		item_stock = item_stock - 1
	end
	p "=========================== Mobiel =========================="
  end

  
  def list
	@user = User.new
	p "============================="
	p params
	p params[:pack]
	p params[:id]
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
	p @product
  end
  
  def register
	@user = User.new
	render :layout => false
			

  end

  def registration
		user = User.new(user_name: params[:user][:user_name], password: params[:user][:password], email: params[:user][:email])
		user.save
  end
  
  def register_succeed
	render :layout => false,
			:locals => {
		  user: User.new
		}
  end
end
