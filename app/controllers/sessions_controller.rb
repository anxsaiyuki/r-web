class SessionsController < ApplicationController

	def log_in
			p "============================"
			p params[:user][:user_name]
			p "============================"
			authorized_user = User.authenticate(params[:user][:user_name],params[:user][:password])
			p "============================"
			p authorized_user.user_name
			p "==========End============"
			user = User.find_by_user_name(authorized_user.user_name)
			p user.id
			p "==========End============"
			if authorized_user
			  
				session[:userid] = user.id
			p session[:userid]
				    respond_to do |format|
						format.js{ render :js => "window.location = 'http://localhost:3000/'" } 
					end
			else
			    #redirect_to index_path
				    respond_to do |format|
						format.js
					end
			end

	end
	
	def session_end
		
		session.clear
		redirect_to index_path
		
	end

end
