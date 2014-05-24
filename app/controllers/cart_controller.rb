class CartController < ApplicationController
  def index
	   @user = User.new
	   p "=========================="
	   p session[:userid]
	   p "=========================="
	   @cart = Cart.group(:product_id).order("quantity desc").where(user_id: session[:userid], status: 1).includes(:product)
	   @cartPriceTotal = 0
	   @cart.each do |cart|
			@cartPriceTotal = @cartPriceTotal + (cart.quantity * cart.price)
		end
	   #@cart = Cart.includes(:product)


  end

  def add_cart
		@product = Product.find(params[:id])
		if session[:userid].nil?

			@user_exist = 0
			
		else
		
			@user_exist = 1
			@cartProduct = Cart.find_by_user_id_and_product_id_and_status(session[:userid], @product.id, 1)
			if @cartProduct.nil?
				@quantityStatus = 0
				cart = Cart.new(user_id: session[:userid], product_id: @product.id, price: @product.price, quantity: 1, status: 1)
				cart.save
			else
				@cartQuantity = @cartProduct.quantity + 1
				if @cartQuantity > @product.quantity 
					@quantityStatus = 1
				else
					@quantityStatus = 0
				Cart.find_by_user_id_and_product_id_and_status(session[:userid], @product.id, 1).update_attributes(quantity: @cartQuantity)
				end
			end
			
		end
		
		respond_to do |format|
		  format.js
		end
  end
  
  def add_item_cart

		@product = Product.find(params[:id])
		if session[:userid].nil?

			@user_exist = 0
			
		else
		
			@user_exist = 1
			@cartProduct = Cart.find_by_user_id_and_product_id_and_status(session[:userid], @product.id, 1)
			if @cartProduct.nil?
				@quantityStatus = 0
				cart = Cart.new(user_id: session[:userid], product_id: @product.id, price: @product.price, quantity: params[:product][:quantity], status: 1)
				cart.save
			else
				@cartQuantity = @cartProduct.quantity + params[:product][:quantity].to_i
				if @cartQuantity > @product.quantity 
					@quantityStatus = 1
				else
					@quantityStatus = 0
				Cart.find_by_user_id_and_product_id_and_status(session[:userid], @product.id, 1).update_attributes(quantity: @cartQuantity)
				end
			end

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
		
		@cart_left = Cart.includes(:product).group(:product_id).order("quantity desc").where(user_id: session[:userid], status: 1).includes(:product)
		@cartPriceTotal = 0
	    @cart_left.each do |cart_left|
			@cartPriceTotal = @cartPriceTotal + (cart_left.quantity * cart_left.price)
		end
		respond_to do |format|
		  format.js
		end
  end
  
  def edit_cart_quantity
		@overQuantity = 0
		@cartQuantity = params[:cart_quantity]
		@cartProduct = params[:product_id]
		cartsize = params[:product_id].size.to_i
		cartsize.times do |x|

			@product = Product.find(@cartProduct[x])
			if @cartQuantity[x].to_i == 0
				Cart.find_by_user_id_and_product_id(session[:userid], @cartProduct[x]).destroy
				p "=======Delete=========="
				
			elsif @cartQuantity[x].to_i > @product.quantity.to_i or @cartQuantity[x].to_i < 0
				@overQuantity = 1
				p "=====Quantity Over========"
				
			elsif @cartQuantity[x].to_i <= @product.quantity.to_i and @cartQuantity[x].to_i > 0
				Cart.find_by_user_id_and_product_id_and_status(session[:userid], @cartProduct[x], 1).update_attributes(quantity: @cartQuantity[x])
				p "=====Update========"
				
			end
		end
		@cart_left = Cart.includes(:product).group(:product_id).order("quantity desc").where(user_id: session[:userid], status: 1).includes(:product)
		@cartPriceTotal = 0
	    @cart_left.each do |cart_left|
			@cartPriceTotal = @cartPriceTotal + (cart_left.quantity * cart_left.price)
		end
		respond_to do |format|
		  format.js
		end
  end
  
end

