class Student < ApplicationRecord
	validates :school_id, inclusion: {in: School.all.map{|t| t.id_school}, message: "no such school"}
	validates :second_name, inclusion: {in: Student.all.map{|t| t.second_name}, message: "wrong name"}
end
