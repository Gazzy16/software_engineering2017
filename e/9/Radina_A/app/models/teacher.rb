class Teacher < ApplicationRecord
	has_many :connects
has_many :schools, through: :connects
	validates :first_name && :second_name, uniqueness: true
	#validates :second_name, uniqueness: true
end
