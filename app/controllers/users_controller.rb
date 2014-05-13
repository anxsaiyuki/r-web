class UsersController < ApplicationController
  def create_user
	@user = User.new
	p "================================================="
	p User.validate_email(params[:user][:email])
	p "================================================="
	UserMailer.welcome_email(@user).deliver	
	if params[:user][:password_confirmation].blank? || params[:user][:user_name].blank? || params[:user][:password].blank? || params[:user][:email].blank? 
		@error = "Cannot leave blank"
		respond_to do |format|
			format.js
		end
		
	else
		user = User.find_by_user_name(params[:user][:user_name])
			
		if user.nil?
		
			email = User.find_by_email(params[:user][:email])
			if email.nil?
				if params[:user][:password] == params[:user][:password_confirmation]

					if User.validate_email(params[:user][:email])
						@userdata = User.new(user_name: params[:user][:user_name], password: params[:user][:password], email: params[:user][:email])
						@userdata.save
						@success = "Success"
						@success_message = "You have successfully registered" 
						UserMailer.welcome_email(@userdata).deliver	
						respond_to do |format|
							format.js
						end
					else
						@error = "That is not a correct email"
						respond_to do |format|
							format.js
						end
					end
				else 
				
					@error = "Passwords are not the same"
					respond_to do |format|
						format.js
					end
				
				end
			else
				@error = "Email already exists"
				respond_to do |format|
					format.js
				end
			end

		else 	
		

			@error = "Username already exists"
			respond_to do |format|
				format.js
			end
			
		end
		
	end
  end

end
