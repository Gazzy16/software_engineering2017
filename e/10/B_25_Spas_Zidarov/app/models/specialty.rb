class Specialty < ApplicationRecord
	has_many :school_specialties
	has_many :schools, through: :school_specialties


	validate do
		if self.number_of_students < 18 && self.number_of_students > 30
			errors.add(:number_of_students, "Can be between 18 and 30 students")
		end		
	end
end
