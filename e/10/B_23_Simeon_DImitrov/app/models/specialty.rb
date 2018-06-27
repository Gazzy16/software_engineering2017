class Specialty < ApplicationRecord
belongs_to :school

validates :studnum, :inclusion => 18..30

validate :check

private
def check
	count =	Specialty.where(school_id: self.school_id).count
	if count >= 3
		errors.add(:base, "Problem")
	end
end

validate do
	sum = 0
    Specialty.where(school_id: school_id).each do |ts|
      sum = sum + ts.studnum
    end
    if sum >= 200
	errors.add(:base, "Problem!")
    end
end


end
