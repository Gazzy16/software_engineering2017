class TeacherSchool < ApplicationRecord
	belongs_to :user
	belongs_to :group

	validate :validates_teachers_in_school

  private
  def validates_teachers_in_school
   TeacherSchool.where(school_number: school_number).each do |teacherSchool|
		if teacherSchool.teacher.subject == self.teacher.subject
			errors.add(:school, "Max number of teachers with this subject in this school reached")
		end
	end
end
