class CartController < ApplicationController
  def index
	   @user = User.new
	   p "=========Session=========="
	   p session[:userid]
	   p "=========================="
	   @cart = Cart.group(:product_id).order("quantity desc").where(user_id: session[:userid], status: 1).includes(:product)
	   @cartPriceTotal = 0
	   @counter = 1
	   
	   @quantity_list = Hash.new
	   @cart.each do |cart|
	     
			@cartPriceTotal = @cartPriceTotal + (cart.quantity * cart.price)
			@product = Product.includes(:image).find(cart.product_id)
			@quantity = Array.new
      item_stock = @product.quantity
      @countersym = @counter.to_s.to_sym
          @product.quantity.to_i.times do |i|
            @quantity << item_stock
            item_stock = item_stock - 1
          end
          @quantity_list["#{@countersym}"] = @quantity
           p "=========quantity=========="
           p @quantity_list["#{@countersym}"]
           p "=========================="
       @counter = @counter + 1
		 end
  end

  def add_cart
		@product = Product.find(params[:id])
		if session[:userid].nil?
			p "good"
			@user_exist = 0
			@quantityStatus = 0
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
    @counter = 1
     
    @quantity_list = Hash.new
    @cart_left.each do |cart_left|
      @cartPriceTotal = @cartPriceTotal + (cart_left.quantity * cart_left.price)
      @product = Product.includes(:image).find(cart_left.product_id)
      @quantity = Array.new
      item_stock = @product.quantity
      @countersym = @counter.to_s.to_sym
          @product.quantity.to_i.times do |i|
            @quantity << item_stock
            item_stock = item_stock - 1
          end
          @quantity_list["#{@countersym}"] = @quantity
           p "=========quantity=========="
           p @quantity_list["#{@countersym}"]
           p "=========================="
       @counter = @counter + 1
    end
		respond_to do |format|
		  format.js
		end
  end
  
  def edit_cart_quantity
		@overQuantity = 0
		@cartQuantity = params[:cart_quantity]
		@cartProduct = params[:product_id]
		@cartNumber = params[:cart_number]
		p "=======Number======="
		p = params[:cart_number]
		cartsize = params[:product_id].size.to_i
		  cartsize.times do |x|

			  @product = Product.find(@cartProduct[x])

				Cart.find_by_user_id_and_product_id_and_status(session[:userid], @cartProduct[x], 1).update_attributes(quantity: @cartQuantity[x])
				p "=====Update========"
				
        
		  end
		@cart_number_price = @cartQuantity.to_i * @product.price.to_i
		p "=====Cart Total========"
		p @cartQuantity
		p @product.price
		p @cart_number_price
		@cart_left = Cart.includes(:product).group(:product_id).order("quantity desc").where(user_id: session[:userid], status: 1).includes(:product)
		@cartPriceTotal = 0
		@counter = 1
     
    @quantity_list = Hash.new
	  @cart_left.each do |cart_left|
			@cartPriceTotal = @cartPriceTotal + (cart_left.quantity * cart_left.price)
      @product = Product.includes(:image).find(cart_left.product_id)
      @quantity = Array.new
      item_stock = @product.quantity
      @countersym = @counter.to_s.to_sym
          @product.quantity.to_i.times do |i|
            @quantity << item_stock
            item_stock = item_stock - 1
          end
          @quantity_list["#{@countersym}"] = @quantity
           p "=========quantity=========="
           p @quantity_list["#{@countersym}"]
           p "=========================="
       @counter = @counter + 1
		end
		respond_to do |format|
		  format.js
		end
  end
  
end

