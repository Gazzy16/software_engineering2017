class Car < ApplicationRecord
	belongs_to :manufacture

	validate do 
		if self.color != "red" || self.color != "green"  || self.color != "blue"
			error.add(:error, "only red, green or blue color")
		end
	end
end
