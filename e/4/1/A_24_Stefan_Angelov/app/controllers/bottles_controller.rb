class BottlesController < ApplicationController
	def index
	end

	def new
		
	end

	def create
		@bottle = Bottle.new(params.require(:bottle).permit(:color, :brand, :table_id))
		@bottle.color = params[:color]
		@bottle.brand = params[:brand]
		@bottle.table_id = table_id
		@bottle.save
		redirect_to @bottle
	end

	def show
		
	end
end
