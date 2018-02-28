class ProductsController < ApplicationController
	def index
		
	end
	
	def create
		@product = Product.new(par)
		@product.save
		redirect_to @product
	end

	def show 
		@product = Product.find(params[:id])
	end

private
	def par
		params.require(:product).permit(:name, :description)
	end
end
