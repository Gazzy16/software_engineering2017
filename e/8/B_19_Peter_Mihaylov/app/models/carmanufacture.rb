class Carmanufacture < ApplicationRecord
	validate do 
		if has_car_with_color?	Car.find(self.car_id).color
			errors.add(:team, "there is already a car with this color")
			end 
	end 
	
		private
		def has_car_with_color? color
		Manufacture.where(car id: self.car_id).each do |mt|
			if color==Car.find(mt.car_id).color
			return true
			end
		end
		false
	end 
end
