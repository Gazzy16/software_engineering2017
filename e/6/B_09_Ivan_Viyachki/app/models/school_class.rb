class SchoolClass < ApplicationRecord
	has_many :teacher_school_classes
	has_many :teachers, through: :teacher_school_classes
end

