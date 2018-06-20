class CarManufacture< ApplicationRecord
validate do 
	if has_car_with_color?	Car.find(self.car_id).color
		errors.add(:car, "there is already a car with this color"
		end 
	end 
	
	private
	def has_car_with_color? color
	CarManufacture.where(car id: self.car_id).each do |ct
		if color==Car.find(ct.car_id).color
		return true
		end
	end
	false
end 
