class TeacherSchool < ApplicationRecord
  belongs_to :teacher
  belongs_to :school

	validate :no_more_teacher_subject

    private 
    def no_more_teacher_subject
    	teachs = TeacherSchool.where(teacher_id: teacher_id)
    	schos = TeacherSchool.where(school_id: school_id)
   		subjs = teachs.subject
   		if 
   	end
end
