class Computer < ApplicationRecord
	validate do
    	if architecture != "x86" && architecture !="x86_64" && architecture != "amd_64"
      		errors.add(:architecture, "Wrong architecture")
    	end
	end

	validate :validates_cars_in_manufacture

	private
	  	def validates_cars_in_manufacture
	    	count = Computer.where(architecture: architecture, manufacture_id: manufacture_id)
	    	.where('date BETWEEN ? AND ?', date.beginning_of_month, date.end_of_month)
	    	.count
	    	if count >= 3
	      		errors.add(:computers, "Max number of computers reached")
	    	end
	end
end
