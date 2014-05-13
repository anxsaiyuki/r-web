class ErrorsController < ApplicationController
  def not_found
	sleep(2.0)
    redirect_to index_path
  end

  def server_error
    render :status => 500, :formats => [:html]
  end
end
