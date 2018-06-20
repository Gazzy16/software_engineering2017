class Computer < ApplicationRecord
	validate do
    	if architecture != "x86" && architecture !="x86_64" && architecture != "amd_64"
      		errors.add(:architecture, "Wrong architecture")
    	end
	end

	validate :validates_cars_in_manufacture

	private
	  	def validates_cars_in_manufacture
	    	count = Car.where(architecture: architecture, date_manufactured: date_manufactured, manufacture_id: manufacture_id).count
	    	if count >= 3
	      		errors.add(:computers, "Max number of computers reached")
	    	end
	end
end
