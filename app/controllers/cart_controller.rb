class CartController < ApplicationController
  def index
	   @user = User.new
	   p "=========================="
	   p session[:userid]
	   p "=========================="
	   @cart = Cart.includes(:product).group(:product_id).order("quantity desc").where(user_id: session[:userid], status: 1).includes(:product)
	   #@cart = Cart.includes(:product)
	   p @cart

  end

  def add_cart
		
		@product = Product.find(params[:id])
		p "==========================="
		
		p "==========================="
		if session[:userid].nil?
			p "user doesn't exist"
			@user_exist = 0
		else
			@user_exist = 1
			cart = Cart.new(user_id: session[:userid], product_id: @product.id, price: @product.price, quantity: 1, status: 1)
			cart.save
		end
		
		respond_to do |format|
		  format.js
		end
	
  end
  
  def remove_cart
		p "==========================="
		p params[:id]
		p "==========================="
		@cart = Cart.find(params[:id])
		@cart.destroy
		p cart_path
		redirect_to cart_path
  end
  
end

