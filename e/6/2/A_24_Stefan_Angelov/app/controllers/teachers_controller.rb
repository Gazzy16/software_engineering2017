class TeachersController < ApplicationController
	def index
		# @teacher = Teacher.
	end

	def new
		# Render form
	end

	def create
		@teacher = Teacher.new(params.require(:teacher).permit(:first_name, :middle_name, :title, :subject))
		@teacher.save
		redirect_to @teacher
	end

	def show
		render plain: "Success"
	end
end
