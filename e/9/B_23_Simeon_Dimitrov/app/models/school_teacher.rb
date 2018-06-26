class SchoolTeacher < ApplicationRecord

validate do
    if check School.find(self.school_id).number
        errors.add(:base, "Problem!")
    end
end
 
private
def check number
	count = 0
    SchoolTeacher.where(teacher_id: self.teacher_id).each do |tt|
        if tt.first_name.length == number
            count = count + 1
        end
    end
	if count >= 1
		return false
	end
    return true
end

end
