class Shool < ApplicationRecord
	 has_many :school_teachers
	 has_many :teachers, through: :school_teachers
end
