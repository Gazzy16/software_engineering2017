class BottlesController < ApplicationController
	def index
		@bottle = Bottle.all
	end

	def create
		@bottle = Bottle.new(par)
		@bottle.save
		redirect_to @bottle
		
	end

	def show
		@bottle = Bottle.find(params[:id])
	end

	def new

	end
private
	def par
		params.require(:bottle).permit(:color, :brand, :table_id)
	end
end
