class Teacher < ApplicationRecord
	has_many :teacher_schools
	has_many :schools, through: :teacher_schools
end
