class Teacher < ApplicationRecord
	  has_many :teachers_school
	  has_many :schools, through: :teachers_schools
end
