class ProductController < ApplicationController
  
  def index
	render :layout => false,
		:locals => {
		  user: User.new
		}
  end
  
  def list
	p "============================="
	p params[:id]
	p "============================="
	
	@product = Product.includes(:image).where(category: params[:id]).page(params[:page]).per(25)
	render :layout => false,
		:locals => {
		  user: User.new
		}
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
