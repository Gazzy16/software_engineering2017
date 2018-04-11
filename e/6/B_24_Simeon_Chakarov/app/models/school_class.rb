class SchoolClass < ApplicationRecord
	has_many :teachers_school
has_many :teachers, through: :teachers_school
end
