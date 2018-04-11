class Teacher < ApplicationRecord
	validates :first_name, uniqueness: true
	has_many :school_teachers
end
