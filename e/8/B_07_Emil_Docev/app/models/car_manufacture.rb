class CarManufacture< ApplicationRecord
validate do 
	if has_car_with_color?	Car.find(self.team_id).color
		errors.add(:car, "there is already a car with this color"
		end 
	end 
	
	private
	def has_car_with_color? color
	CarManufacture.where(car id: self.car_id).each do |mt
		if color==Car.find(mt.team_id).color
		return true
		end
	end
	false
end 
