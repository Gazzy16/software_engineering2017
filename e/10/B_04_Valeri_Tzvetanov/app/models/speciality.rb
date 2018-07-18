class Speciality < ApplicationRecord
	belongs_to :school

	validate do
		if students.to_f < 18 || students.to_f > 30
			errors.add(:students, "Too many or two few students")
		end
	end
	validate do
		school = School.find(school_id)
		if school.specialities.length + 1 > 3
			errors.add(:specialities, "This school has too many specialiaties already")
		end
	end
	validate do
		students = 0
		school = School.find(school_id)
		school.specialities.each do |s|
			students += s.students.to_f
		end
		if students > 70
			errors.add(:specialities, "Too many students fo that school")
		end		
	end	
end
