class Computer < ApplicationRecord
	belongs_to :manufacture, :optional => true

	validate do
    if architecture != "x86" && architecture !="x86_64" && architecture != "amd_64"
      errors.add(:architecture, "Can be only x86, x86_64, amd_64")
    end
	end

	private
  	
	def validates_computers_in_manufacture
    count = Computer.where(architecture: architecture, year: year, manufacture_id: manufacture_id).count
    if count >= 3
      errors.add(:computers, "Max number of computers with this architecture in this year reached")
    end
	end
end
