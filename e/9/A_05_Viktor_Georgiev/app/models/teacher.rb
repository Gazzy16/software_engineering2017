class Teacher < ApplicationRecord
	has_many :teacherschools
	has_many :schools, through: :teacherschools
	validates :first_name, uniqueness: { scope: :second_name,
message: "error" }
end
