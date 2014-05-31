class CardsController < ApplicationController
  def cardlist
	@product = Product.all
  end
  
  def cardimport
  @product = Product.all
  end
end
