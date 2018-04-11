class Teacher < ApplicationRecord
	validates :first_name, uniqueness: true
end
