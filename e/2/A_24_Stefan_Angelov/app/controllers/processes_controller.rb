class ProcessesController < ApplicationController
	def index
	end

	def create
		@process = ProcessA24StefanAngelov.new(params.require(:processes).permit(:id_process, :name))
		@process.save
		redirect_to action: "show", id: @process.id_process
	end

	def show
		render plain: "success"
	end
end
