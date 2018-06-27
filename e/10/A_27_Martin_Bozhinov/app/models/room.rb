class Room < ApplicationRecord
	belongs_to :hotel



	validate do 
		unless square_meters >= 100 && square_meters <= 200
			errors.add(:base, "room size")
		end
	end
end
