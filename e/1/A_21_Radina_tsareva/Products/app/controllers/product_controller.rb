class ProductController < ApplicationController

  def create
    @product = Product.new
    @product.save
    render :create
  end

  def created
    render :created
  end
end
