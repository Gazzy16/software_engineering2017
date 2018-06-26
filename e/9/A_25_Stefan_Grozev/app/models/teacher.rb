class Teacher < ApplicationRecord
	has_many :teacher_schools, :dependent => :destroy
	has_many :schools, :through => :teacher_schools

	validate do
    if first_name == self.first_name && second_name == self.second_name
      errors.add(:teacher, "There is already a teacher with this names!")
    end
	end
end
