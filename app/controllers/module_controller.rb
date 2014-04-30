class ModuleController < ApplicationController
  def banner
	render :layout => false
  end
  
  def footer
	render :layout => false
  end
  
  def index_banner
	render :layout => false
  end
  
  def item
	@product = Product.joins(:image).find(params[:id])
	render :layout => false
  end
  
  def menu
	render :layout => false
  end

  
  def product
  @product = Product.find(params[:id])
  render :layout => false
  end
  
  
  def register
	render :layout => false
  end
  
  def sideMenu
	render :layout => false
  end
  
   def top_bar
	render :layout => false
  end
  
end
