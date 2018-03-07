class OrdersController < ApplicationController
	def index
	end

	def create
		redirect_to params[:id]
	end

	def show
		@desiredProduct = Product.find(params[:id])
	end
end
