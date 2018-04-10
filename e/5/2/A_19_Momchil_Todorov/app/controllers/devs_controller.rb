class DevsController < ApplicationController
	def index
		@dev = Dev.all
		#render 'new'
	end

	def create
		@dev = Dev.new(par)
		@dev.save
		redirect_to @dev	
	end
	
	def show
		@dev = Dev.find(params[:id])
	end

	def new

	end
private
	def par
		params.require(:dev).permit(:name, :project_id)
	end
end
