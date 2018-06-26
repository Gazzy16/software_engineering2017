class Teacher < ApplicationRecord
	has_many :teacher_schools
	has_many :schools, through: :teacher_schools

	validates :first_name, uniqueness: { scope: :last_name,
    message: "there is another teacher with this name already" }
end
