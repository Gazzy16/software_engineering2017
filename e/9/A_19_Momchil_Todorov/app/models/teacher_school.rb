class TeacherSchool < ApplicationRecord
  belongs_to :teacher
  belongs_to :school

	validate :no_more_teacher_subject

    private 
    def no_more_teacher_subject
    	current_teacher = TeacherSchool.where(teacher_id: teacher_id)
    	current_school = TeacherSchool.where(school_id: school_id)
   		current_subject = teachs.subject
   		TeacherSchool.where(teacher_id: current_teacher, school_id: current_school).each do |c|
			if c.teacher.subject == current_subject
			errors.add(:connect,"aready emplyed")
			end
end
   	end
end
