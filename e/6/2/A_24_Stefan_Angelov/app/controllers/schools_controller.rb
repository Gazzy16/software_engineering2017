class SchoolsController < ApplicationController
	def index
		@schools = School.all
	end

	def new
		# Render form
	end
	
	def create
		@school = School.new(params.require(:school).permit(:school_day, :teacher_id))
		@school.save
		redirect_to @school
	end

	def show
		render plain: 'Success'
	end
end
