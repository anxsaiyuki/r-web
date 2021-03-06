class ApplicationController < ActionController::Base
  

  helper :all
  before_filter :prepare_for_mobile
  before_filter :logged_in
  
  def render_404
	respond_to do |format|
		format.html { render :file => "/errors/not_found", :status => :not_found }
		format.mobile { render :file => "/errors/not_found", :status => :not_found }
	end
  end
  
  
  
  private 
  
  def mobile_device?
	if session[:mobile_param]
		session[:mobile_param] == "1"
	else
		request.user_agent =~ /Mobile|webOS/
	end
  end
  
  helper_method :mobile_device?
  
  def prepare_for_mobile
	session[:mobile_param] = params[:ua_] if params[:ua_]
	request.format = :mobile if mobile_device? && !request.xhr?
  end
  
  def logged_in
	if session[:userid]
	user = User.find(session[:userid])
	@user_logged_in = user.user_name
	else
	@user_logged_in = nil	
	end
  end
end
