class Room < ApplicationRecord
	belongs_to :hotel

	validate do
		if self.square_meters < 100 || self.square_meters > 200
			self.errors.add(:base, "More or less square meters")
		end
	end

	validate do 
			sum = 0
			Room.where(hotel_id: hotel_id).each do |rs|
			sum += rs.square_meters
		end
	end

		if sum + square_meters > 700
		errors.add(:rooms, "More than 7000")
	end 
end
