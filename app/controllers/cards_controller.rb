class CardsController < ApplicationController
  def cardlist
	@product = Product.all
  end

end
