class SchoolClass < ApplicationRecord
	belongs_to :teacher

	validate :teacher_exists

    	def teacher_exists
     	errors[:teacher] << "must exist" unless Teacher.exists?(self.teacher_id)
end
