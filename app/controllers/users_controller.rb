class UsersController < ApplicationController
  def new
  
  end
  
  def create
	@user = User.new
	p "================================================="
	p User.validate_email(params[:user][:email])
	p "================================================="
	
	if params[:user][:password_confirmation].blank? || params[:user][:user_name].blank? || params[:user][:password].blank? || params[:user][:email].blank? 
		flash[:notice] = "Cannot leave blank"
		redirect_to register_path
		
	else
		user = User.find_by_user_name(params[:user][:user_name])
			
		if user.nil?
			if params[:user][:password] == params[:user][:password_confirmation]

				if User.validate_email(params[:user][:email])
					userdata = User.new(user_name: params[:user][:user_name], password: params[:user][:password], email: params[:user][:email])
					userdata.save

					flash[:notice] = "You have successfully Registered."
					redirect_to register_succeed_path
				else
					flash[:notice] = "That is not a correct email"
					redirect_to register_path
				end
			else 
			
			flash[:notice] = "Passwords are not the same"
			redirect_to register_path
			
			end

		else 	
		

			flash[:notice] = "Username already exists"
			redirect_to register_path
			
		end
		
	end
  end
  
  def edit
  
  end

end
