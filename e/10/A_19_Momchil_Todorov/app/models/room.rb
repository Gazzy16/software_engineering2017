class Room < ApplicationRecord
	belongs_to :hotel

	validates :square_meters, :inclusion => 100..200

	validate do
		if Room.where(hotel_id: hotel_id).count > 10
			errors.add(:rooms, "Max numbers of rooms reached")
		end
	end 

	validate :validates_sum_of_meters

	private
	def validates_sum_of_meters
		sum = 0
		Room.where(hotel_id: hotel_id).each do |rs|
        	sum += rs.square_meters
    	end

    	if sum+square_meters > 7000
        	errors.add(:rooms, "Max number of square meters reached")
        end 
	end
end
