class School < ApplicationRecord
	has_many :school_specialies
	has_many :specialies, through: :school_specialies

	
end
