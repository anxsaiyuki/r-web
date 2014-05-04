class MainController < ApplicationController
  def index
	render :layout => false,
		:locals => {
		  user: User.new
		}
  end
end