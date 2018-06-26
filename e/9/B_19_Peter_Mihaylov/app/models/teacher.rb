class Teacher < ApplicationRecord
	has_many :school_teachers
	has_many :schools, through: :school_teachers

	 validates :first, uniqueness: { scope: :second }

	  validate do
	    if first_name == self.first_name && second_name == self.second_name
	      errors.add(:teacher, "There is already a teacher with this names!")
	     end
	    
	    if  self.first_name.length != School.number
	    	errors.add(:school, "You can't add a teacher to this school!")
	    end
	  end
end


