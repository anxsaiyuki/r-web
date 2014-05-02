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
	@product = Product.includes(:image).find(params[:id])
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
	
	if session[:user_name]
	user = User.find_by_user_name(session[:user_name])
	@user_logged_in = user.user_name
	else
	@user_logged_in = nil	
	end
	render :layout => false
  end
  
end
