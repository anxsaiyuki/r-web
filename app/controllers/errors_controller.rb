class ErrorsController < ApplicationController
  def not_found
	p "==============================="
	p "here"
	p "==============================="
	
    redirect_to index_path
  end

  def server_error

    redirect_to index_path
  end
end
