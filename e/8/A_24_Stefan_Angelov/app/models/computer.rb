class Computer < ApplicationRecord
	validates do
		if architecture != "x86" && architecture != "x86_64" && architecture != "amd_64"
			errors.add(:architecture, "Architecture can be only x86, x86_64 or amd_64"
		end  
	end

	validates do
		computers = Computer.where(architecture: self.architecture, date_manufactured: self.date_manufactured, manufacture_id: self.manufacture_id)
		if computers.count >= 3
			errors.add(:computer, "Can only make up to 3 computers with this architecture within this month!")
		end
	end
end
