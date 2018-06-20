class Carmanufacture < ApplicationRecord
	validate do 
		if has_car_reg_color?	Car.find(self.car_id).color
			errors.add(:team, "there is already a car with this color")
			end 
	end 
	
		private
		def has_car_reg_color? color
		Manufacture.where(car id: self.car_id).each do |mt|
			if color != "red" || color != "green" || color != "blue"
			return true
			end
		end
		false
	end 
end
