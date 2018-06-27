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

validate :checkk

private
def checkk
	countt = Specialty.where(school_id: self.school_id).count
	if countt >= 70
		errors.add(:base, "Problem 2")
	end
end


end
