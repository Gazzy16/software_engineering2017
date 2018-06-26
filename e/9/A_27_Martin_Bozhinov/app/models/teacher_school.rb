class TeacherSchool < ApplicationRecord


	school = School.find(school_id: school_id)

	teacher = Teacher.find(teacher_id: teacher_id)

	validate do 
		if TeacherSchool.where(school_id: school_id)
			.where(first_name: teacher.first_name, last_name: teacher.last_name).count >= 1
			errors.add("Cannot add teacher")
		end
	end


	validate do 

	end


end
