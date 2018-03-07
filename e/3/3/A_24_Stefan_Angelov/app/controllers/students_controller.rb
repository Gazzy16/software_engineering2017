class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def new
		# form for registering students
	end
	
	def create
		@student = Student.new(params.require(:student).permit(:first_name, :last_name, :school_id))
		if @student.save
			redirect_to @student
		else
			render plain: 'Something went wrong!'
		end
	end

	def show
		# Success
		render plain: "Success"
	end

end
