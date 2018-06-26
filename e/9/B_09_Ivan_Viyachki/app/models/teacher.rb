class Teacher < ApplicationRecord
	has_many :teacher_schools
	has_many :schools, through: :teacher_schools

	validates :first_name && :second_name, uniqueness: true
end

