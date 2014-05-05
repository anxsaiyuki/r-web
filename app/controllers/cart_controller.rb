class CartController < ApplicationController
  def index
	   @user = User.new
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
  
end

