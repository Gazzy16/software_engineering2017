class Teacher < ApplicationRecord

	validates :first_name && :second_name, uniqueness: true
	#validates :second_name, uniqueness: true
end
