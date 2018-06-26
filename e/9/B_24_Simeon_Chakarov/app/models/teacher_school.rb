class TeacherSchool < ApplicationRecord
	belongs_to :school
	belongs_to :teacher
	validate :check

	private 
    def check
    	current_teacher = TeacherSchool.where(teacher_id: teacher_id)
    	current_school = TeacherSchool.where(school_id: school_id)
   		TeacherSchool.where(teacher_id: current_teacher, school_id: current_school).each do |c|
			if c.teacher.name.length != c.school.number
				errors.add(:connect,"Ooops! Error with num->length")
			end
	end
end
end
