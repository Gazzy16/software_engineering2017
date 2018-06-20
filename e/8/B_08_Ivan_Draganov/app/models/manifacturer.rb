class Manifacturer < ActiveRecord::Base
has_many :car
validate :validation1
end

private

	def validation1(Self.Cars(Car))
			Self.cars.each do |variable|
   				code
			end
	end
