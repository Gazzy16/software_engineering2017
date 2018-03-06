class ThreadsController < ApplicationController
	def index
	end

	def create
		@thread = ThreadA24StefanAngelov.new(params.require(:threads).permit(:id_process))
	end

	def show
	end
end
