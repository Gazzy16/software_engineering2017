class SchoolClass < ApplicationRecord
	has_many :teachers_class
	has_many :teachers, through: :teachers_class
end
