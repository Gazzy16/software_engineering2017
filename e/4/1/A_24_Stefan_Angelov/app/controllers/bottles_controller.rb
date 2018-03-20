class BottlesController < ApplicationController
	def index
		@bottles = Bottle.all
	end

	def new
		
	end

	def create
		@bottle = Bottle.new(params.require(:bottle).permit(:color, :brand, :table_id))
		@bottle.color = params[:color]
		@bottle.brand = params[:brand]
		@bottle.table_id = params[:table_id]
		if @bottle.save
			render plain: "Success"
		else
			render plain: "Fail"
		end
	end

	def show
		
	end
end
