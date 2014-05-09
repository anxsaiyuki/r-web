class ModuleController < ApplicationController
  def banner
	render :layout => false
  end
  
  def footer
	render :layout => false
  end
  
  def index_banner
	render :layout => false
  end
  
  def item
	p params[:id]
	@product = Product.includes(:image).find(params[:id])
	@cart = Cart.new
	@quantity = Array.new
	item_stock = @product.quantity
	@product.quantity.to_i.times do |i|
		@quantity << item_stock
		item_stock = item_stock - 1
	end
	p @quantity 
	render :layout => false

  end
  
  def menu
	render :layout => false
  end

  
  def product
	@product = Product.includes(:image).where(category: params[:id]).page(params[:page]).per(16)
	render :layout => false
  end
  
  
  def register
	render :layout => false
  end
  
  def sideMenu
	render :layout => false
  end
  
  def top_bar
	
	if session[:userid]
	user = User.find(session[:userid])
	@user_logged_in = user.user_name
	else
	@user_logged_in = nil	
	end
	render :layout => false
  end
  
  def top_bar_login
	
	
	
  end
  
end
