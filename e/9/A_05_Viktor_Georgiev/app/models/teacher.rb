class Teacher < ApplicationRecord
	has_many :teacherschools
	has_many :schools, through: :teacherschools
	validates :first_name, uniqueness: true
	validates :second_name, uniqueness: true
end
