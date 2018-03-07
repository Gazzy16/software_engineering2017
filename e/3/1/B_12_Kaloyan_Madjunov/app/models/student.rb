class Student < ApplicationRecord
	belongs_to :my_school
	validates :school_id, inclusion: { in: MySchool.all.map{|s| s.id},
    message: "No such school!" }
	validates :second_name, uniqueness: true
#Validate that when creating student the school id for existing school is specified. If not the validation should fail
end
