class SpecialtySchool < ApplicationRecord

	belongs_to :school
	belongs_to :specialty



validate do
    if has_specialties
        errors.add(:base, "Problem!")
    end
end
 
private
def has_specialties
	count = SpecialtySchool.where(school_id: self.school_id).count
	
	if count >= 3
		return true
	end
    return false
end

end
