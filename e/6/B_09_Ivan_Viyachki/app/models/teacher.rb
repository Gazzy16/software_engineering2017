class Teacher < ApplicationRecord
	has_many :teacher_school_classes
	has_many :school_classes, through: :teacher_school_classes
	validates :id, uniqueness: true
end
