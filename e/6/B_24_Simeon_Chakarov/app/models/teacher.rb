class Teacher < ApplicationRecord
	  has_many :teachers_school
	  has_many :schools, through: :teachers_schools
validates :first_name, uniqueness: true
validates :second_name, uniqueness: true
end
