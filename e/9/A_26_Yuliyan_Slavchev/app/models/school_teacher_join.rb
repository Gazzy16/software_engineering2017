class SchoolTeacherJoin < ApplicationRecord
  belongs_to :school
  belongs_to :teacher

  validate :validates_teachers_in_school

  private
    def validates_teachers_in_school
    SchoolTeacherJoin.where(school_id: school_id).each do |teacherSchool|
      if teacherSchool.teacher.subject == Teacher.find(self.teacher_id).subject
        errors.add(:school, "Max number of teachers with this subject in this school reached")
      end
    end
  end
end
