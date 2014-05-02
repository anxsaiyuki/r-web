class WelcomeController < ApplicationController
  def index
	render :layout => false
  end
  
  def product
	render :layout => false
  end
  
  def product_list
	@product = Product.includes(:image).where(category: params[:id]).page(params[:page]).per(16)
	render :layout => false
  end
  
  def register
  
	render :layout => false,
	        :locals => {
              user: User.new
            }
  end
end
