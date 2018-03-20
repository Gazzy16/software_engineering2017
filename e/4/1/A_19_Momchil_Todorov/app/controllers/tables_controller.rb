class TablesController < ApplicationController
	def index
		render "new"
	end

	def create
		@table = Table.new(par)
		@table.save
		redirect_to @table	
	end
	
	def show
		@table = Table.find(params[:id])
	end

	def new

	end
private
	def par
		params.require(:table).permit(:width, :hight)
	end
end
