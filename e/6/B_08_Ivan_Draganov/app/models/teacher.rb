class Teacher < ApplicationRecord
	  has_many :teachers_class
	  has_many :school_class, through: :teachers_class
end
