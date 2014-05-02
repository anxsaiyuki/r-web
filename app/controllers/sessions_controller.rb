class SessionsController < ApplicationController

	def create
			p "============================"
			p params[:user][:user_name]
			p "============================"
			authorized_user = User.authenticate(params[:user][:user_name],params[:user][:password])
			p "============================"
			p authorized_user
			p "============================"
			if authorized_user
			  
				session[:user_name] = authorized_user.user_name
				redirect_to index_path
				flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.user_name}"
			else

			    #redirect_to index_path
			  	flash[:notice] = "Invalid User_name or Password"
				flash[:color]= "invalid"
			end

	end
	
	def session_end
		
		session.clear
		redirect_to index_path
		
	end

end
