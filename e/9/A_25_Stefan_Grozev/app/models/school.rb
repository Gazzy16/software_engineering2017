class School < ApplicationRecord
	has_many :teacher_schools, :dependent => :destroy
	has_many :teachers, :through => :teacher_schools
end
