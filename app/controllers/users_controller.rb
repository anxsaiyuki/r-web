class UsersController < ApplicationController
  def new
  
  end
  
  def create

	user = User.new(user_name: params[:user][:user_name], password: params[:user][:password], email: params[:user][:email])
	user.save
	session[:user_name] = params[:user][:user_name]

	
	redirect_to register_path
	
  end
  
  def edit
  
  end
end
