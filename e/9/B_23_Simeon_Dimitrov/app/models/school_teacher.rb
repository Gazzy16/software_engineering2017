class SchoolTeacher < ApplicationRecord

validate do
    if check School.find(self.school_id).number
        errors.add(:base, "Problem!")
    end
end
 
private
def check number
    SchoolTeacher.where(teacher_id: self.teacher_id).each do |tt|
        if validates :tt.first_name, length: {is: number}
            return false
        end
    end
    return true
end

end
