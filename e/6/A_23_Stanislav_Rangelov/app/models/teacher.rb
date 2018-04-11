class Teacher < ApplicationRecord
	belong_to :school
	validates :first_name, uniqueness: true
end
