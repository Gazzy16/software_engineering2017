class Car < ActiveRecord::Base
	belongs_to :manifacturer
	validate :colorvalidation
end

private 

	def colorvalidation(self.color)
		if(!self.color == "red" || !self.color == "green" || !self.color == "blue"){
			errors.add(:base, "Cant create with this color")
			return false
		}else return true
		
	end
