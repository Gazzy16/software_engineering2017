class Teacher < ApplicationRecord
	has_many :schools
	validates_uniqueness_of :firstname, :message => "First name needs to be unique"
	
end
