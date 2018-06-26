class TeacherSchool < ApplicationRecord
	belongs_to :teacher
	belongs_to :school
	
	validate do
		new_teacher = Teacher.find(teacher_id)
		new_school = School.find(school_id)
		new_subject = new_teacher.subject
		
		TeacherSchool.where(school_id: new_school).each do |ts|
			teacher = Teacher.find(ts.teacher_id)
			if(teacher.subject = new_subject)
				errors.add(:base, "Error with validation")
			end
		end
	end
end
