class Student < ApplicationRecord
	belongs_to :schools, optional: true
end
