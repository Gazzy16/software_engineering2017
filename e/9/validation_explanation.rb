# THis is not a Ruby file. Can not interpret it

class TeacherSchool
  teacher_id
  school_id

  validate do
    TeacherSchool.where(school_id: school_id).each do |ts|
      if ts.teacher.subject == Teacher.find(teacher_id).subject
        self.errors.add(:base, "ddd")
      end
    end

  end

end

class Teacher
  validate do
    if Teacher.exists?(first_name: first_name, last_name: last_name)
      self.errors(:base, "Can not have duplicate fist and last name")
    end
  end

end

Teacher
School

TeacherSchool
