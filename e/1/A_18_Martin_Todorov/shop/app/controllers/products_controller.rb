class ProductsController < ApplicationController

    def index
      @products = Product.all
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.create(params.require(:product).permit(:name, :description))
      redirect_to products_path
    end
end
