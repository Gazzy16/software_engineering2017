class TeacherSchool < ApplicationRecord
  belongs_to :teacher
  belongs_to :school

  validate :uniqueness_teacher_subject

  private
    def uniqueness_teacher_subject

      teacher_schools = TeacherSchool.where(school_id: school_id)
      new_teacher = Teacher.find(teacher_id)

      for t in teacher_schools
        t_id = t.teacher_id
        teacher = Teacher.find(t_id)
        if teacher.subject == new_teacher.subject
          errors.add(:teacher_id, "has subject")
        end
      end
    end
end
