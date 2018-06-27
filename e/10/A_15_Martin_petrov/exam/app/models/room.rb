class Room < ApplicationRecord
	belongs_to :hotel

	validate do
		if self.square_meters < 100 || self.square_meters > 200
			self.errors.add(:base, "More or less square meters")
		end
	end

	validate do 
		
	end
end
