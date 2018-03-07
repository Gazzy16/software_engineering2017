class TeacherController < ApplicationController
	
   def list
	 @teachers = Teacher.all
   end
   
   def show
 	@teacher = Teacher.find(params[:id])
   end
   
   def new
	@teacher = Teacher.new
  	@subjects = Subject.all
   end
   
   def create
	@teacher = Teacher.new(teacher_params)
	
   	if @teacher.save
      		redirect_to :action => 'list'
   	else
      		@subjects = Subject.all
     		 render :action => 'new'
   	end
   end
 
   def teacher_params
   	params.require(:teacher).permit	(:first_name, :middle_name, :last_name, :title, :subject_id)
   end
   
   def edit
	@teacher = Teacher.find(params[:id])
	@subjects = Subject.all
   end
   
   def update
	@teacher = Teacher.find(params[:id])

	if @teacher.update_attributes(teacher_param)
		redirect_to :action => 'show', :id => @teacher
	else
	@subjects = Subject.all
		render :action => 'edit'
	end
   end

   
   def delete
	Teacher.find(params[:id]).destroy
  	redirect_to :action => 'list'
   end

   def show_subjects
    @subject = Subject.find(params[:id])
   end
end
