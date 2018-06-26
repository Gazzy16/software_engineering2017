class School < ApplicationRecord
	has_many :teacher_schools
	has_many :teachers, through: :teacher_schools
end
