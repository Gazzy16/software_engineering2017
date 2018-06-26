class Teacher < ApplicationRecord
	has_many :school_teachers
	has_many :schools, through: :school_teachers

	validates :first, uniqueness: { scope: :second }
end
