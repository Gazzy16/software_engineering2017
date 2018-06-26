class Teacher < ApplicationRecord
	has_many :school_teachers
    	has_many :schools, through: :school_teachers

validate do
    if Teacher.exists?(first_name: first_name, second_name: second_name)
      self.errors(:base, "Can not have duplicate first and second name")
    end
end

end
