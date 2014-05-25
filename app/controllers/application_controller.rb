class ApplicationController < ActionController::Base
  
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  rescue_from NoMethodError, :with => :render_404
  helper :all
  before_filter :prepare_for_mobile
  
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
end
