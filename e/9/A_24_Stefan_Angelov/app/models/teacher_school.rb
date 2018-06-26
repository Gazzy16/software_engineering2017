class TeacherSchool < ApplicationRecord
  belongs_to :teacher
  belongs_to :school

  validate :uniqueness_teacher_subject

  private
    def uniqueness_teacher_subject
      #count = Teacher.where()
    end
end
