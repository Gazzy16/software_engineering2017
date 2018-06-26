class Teacher < ApplicationRecord
	has_many :schools
	validates :first_name , uniqueness :true
	validates :second_name , uniqueness :true
end
