class OrdersController < ApplicationController
  def index
	@user = User.new
	@paymentChoice = 1
  end

  def payment_method
		@user = User.new
		@paymentChoice = params[:Option]
		unless cookies[:orderInfo].nil?
		@order_info = cookies[:orderInfo].split('&')
		end
		p "==============================="
		p @paymentChoice
		p @order_info 
		p "==============================="
		
		respond_to do |format|
		  format.js
		end
  end
  
  def order_confirmation
		cookies[:orderInfo] = {:value => [params[:payment_type], session[:userid], params[:customer_name]], :expires => 1.hour.from_now }
		@cart = Cart.group(:product_id).order("quantity desc").where(user_id: session[:userid], status: 1).includes(:product)	   
		@cartPriceTotal = 0
		@cart.each do |cart|
			@cartPriceTotal = @cartPriceTotal + (cart.quantity * cart.price)
		end

		unless cookies[:orderInfo].nil?
			@order_info = cookies[:orderInfo]
		end
		p "==============================="
		p params[:customer_name]
		p params[:payment_type]
		p cookies[:orderInfo]
		p @order_info
		p "==============================="
		respond_to do |format|
		  format.js
		end
  end
  
  def order_complete

		@orderProduct = Cart.includes(:product).order("quantity desc").where(user_id: session[:userid], status: 1)

		p "====Product==============="
		p @orderProduct
		p "==============================="
		
		Cart.where(user_id: session[:userid], status: 1).update_all(status: 0)
		
		@userdata = User.find(session[:userid])
		
		UserMailer.order_email(@userdata, @orderProduct).deliver
		
		respond_to do |format|
		  format.js
		end
  end
    
  def store
     @storecity = Store711.select("city").uniq
  end
    
  def store_zone
    p params[:Option]
      @storezone = Store711.select("zone").uniq.find_all_by_city(params[:Option])
    	respond_to do |format|
		  format.js
		end
  end
  
  def store_road
    p params[:Option]
      @storeroad = Store711.select("road").uniq.find_all_by_zone(params[:Option])
    	respond_to do |format|
		  format.js
		end
  end

  def store_shop
    p params[:Option]
      @storeshop = Store711.select("store_name, address").uniq.find_all_by_road(params[:Option])
      p "==================================="
      p @storeshop
    	respond_to do |format|
		  format.js
		end
  end
    
  def store_confim
      
  end
  
end
