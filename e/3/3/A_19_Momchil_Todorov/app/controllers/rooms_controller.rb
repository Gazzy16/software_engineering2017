class RoomsController < ApplicationController
	def index
		render "new"
	end

	def create
	
	end
	
	def show
		@computer = Computer.all
		@room = Room.all
	end

	def new

	end
end
