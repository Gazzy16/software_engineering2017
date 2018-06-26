class School < ApplicationRecord
	has_many :teacherschools
	has_many :teachers, through: :teacherschools
end
