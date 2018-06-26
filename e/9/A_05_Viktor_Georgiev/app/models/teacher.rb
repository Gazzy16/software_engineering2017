class Teacher < ApplicationRecord
	has_many :teacherschools
	has_many :schools, through: :teacherschools
	validates :first_name, :second_name, uniqueness: true
end
