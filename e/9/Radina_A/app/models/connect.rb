class Connect < ApplicationRecord
  belongs_to :school
  belongs_to :teacher
	validate do 
		current_teacher= Connect.find(self.teacher_id)
		current_school = Connect.find(self.school_id)
		current_subject =current_teacher.subject
		Connect.where(teacher_id: current_teacher, school_id: current_school).each do |c|
			if c.teacher.subject == current_subject
			errors.add(:connect,"cant have two")
			end
		end
	end
end
