class OrdersController < ApplicationController
  def index
	@user = User.new
  end

  def payment_method
		p "==============================="
		p params
		p "==============================="
		respond_to do |format|
		  format.js
		end
  end
end
