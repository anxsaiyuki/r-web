class UsersController < ApplicationController
  def cardlist
	@product = Product.all
  end

end
