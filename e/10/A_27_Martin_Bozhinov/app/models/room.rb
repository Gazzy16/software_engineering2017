class Room < ApplicationRecord
	belongs_to :hotel, optional: true



	validate do 
		unless square_meters >= 100 && square_meters <= 200
			errors.add(:base, "room size")
		end
	end


	validate do 
		unless Room.where(hotel_id: hotel_id).count <= 10 
			errors.add(:base, "room count")			
		end
	end


	validate do 
		sum = 0

		Room.where(hotel_id: hotel_id).each do |r|
			sum+=r.square_meters
		end

		if sum + square_meters >= 7000
			errors.add(:square_meters, "balabaslabs")
		end
	end
end
