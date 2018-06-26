class ProjectsController < ApplicationRecord

	def new
	end

	def create
		project = Project.create(:project_id)
	end
end