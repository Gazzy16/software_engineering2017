class Computer < ApplicationRecord
	belongs_to :manufacture

	validate do 
		computer = Computer.find(self.computer_id)
		computer_model = computer.model

		if computer_model not "x86"
			if computer_model not "x86_64"
				if computer_model not "amd_64"
					errors.add(:computer, "Model not available!")
				end
			end
		end
	end
end
