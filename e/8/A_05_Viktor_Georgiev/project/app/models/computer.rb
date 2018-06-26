class Computer < ApplicationRecord
	has_one :manufacture
	validate do 
		if architecture != "x86" && architecture !="x86_64" && architecture != "amd_64"
errors.add(:architecture, "Error")
		end
	end	
end
