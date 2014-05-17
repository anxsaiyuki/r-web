class SessionsController < ApplicationController

	def log_in
			p "============================"
			p params[:user][:user_name]
			p "============================"
			authorized_user = User.authenticate(params[:user][:user_name],params[:user][:password])
			p "============================"
			p authorized_user
			p "==========End============"
			
			p "==========End============"
			if authorized_user
			        user = User.find_by_user_name(authorized_user.user_name)
			        session[:userid] = user.id
				    respond_to do |format|
						format.js{ render :js => "window.location = '#{index_path}'" } 
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
