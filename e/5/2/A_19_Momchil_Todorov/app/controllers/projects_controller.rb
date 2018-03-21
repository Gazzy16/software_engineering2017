class ProjectsController < ApplicationController
	def index
		render 'new'
	end

	def create
		@project = Project.new(par)
		@project.save
		redirect_to @project
		
	end

	def show
		@project = Project.find(params[:id])
	end

	def new

	end
private
	def par
		params.require(:project).permit(:name, :dev_id)
end
end
