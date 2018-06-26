class TeacherSchool < ApplicationRecord
	belongs_to :teacher
	belongs_to :school

	validate do
	if Teacher.find(self.teacher_id).first_name.size != School.find(self.school_id).school_number 
		errors.add(:teacher_schools, "not same number")
	 end
		
	end
end
