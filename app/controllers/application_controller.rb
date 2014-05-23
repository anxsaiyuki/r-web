class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  rescue_from NoMethodError, :with => :render_404
  
  def render_404
	respond_to do |format|
		format.html { render :file => "/errors/not_found", :status => :not_found }
	end
  end
  
  
end
