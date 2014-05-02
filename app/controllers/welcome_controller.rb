class WelcomeController < ApplicationController
  def index
	render :layout => false,
		:locals => {
		  user: User.new
		}
  end
  
  def product
	render :layout => false,
		:locals => {
		  user: User.new
		}
  end
  
  def product_list
	render :layout => false,
		:locals => {
		  user: User.new
		}
  end
  
  def register
  
	render :layout => false,
	        :locals => {
              user: User.new
            }
  end
end
