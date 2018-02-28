class ProductController < ApplicationController

  def index
  	render :index
  end


  def create
    @product = Product.new
    @product.save
    render :create
  end

  def created
    render :created
  end
end
