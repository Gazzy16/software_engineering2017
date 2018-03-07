class ComputersController < ApplicationController
	def index
	end

	def create
		@computer = Computer.new(par)
		@computer.save
		redirect_to @computer
	end

	def show
		@computer = Computer.find(params[:id])
	end

	def new

	end
private
	def par
		params.require(:computer).permit(:color, :brand, :processor, :room_id)
	end
end
