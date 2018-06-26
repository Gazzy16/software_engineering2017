class SchoolTeacher < ApplicationRecord
	belongs_to :school
	belongs_to :teacher

	validate do
		t = Teacher.find(self.teacher_id) 
		s = School.find(self.school_id)

		if t.first.length != s.number
			errors.add(:teacher,"bla bla")
		end
	end

end
