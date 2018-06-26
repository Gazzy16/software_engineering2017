class TeacherSchool < ApplicationRecord
  belongs_to :teacher
  belongs_to :school

  validate :uniqueness_teacher_subject

  private
    def uniqueness_teacher_subject

      teacher_schools = TeacherSchool.where(id: school_id)
      new_teacher = Teacher.where(id: teacher_id)

      for t in teacher_schools
        t_id = t.teacher_id
        teacher = Teacher.where(id: t_id)
        if teacher.subject == new_teacher.subject
          errors.add(:teacher_id, "has subject")
        end
      end
    end
end
