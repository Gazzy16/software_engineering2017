class Manufacture < ApplicationRecord
	has_many :car_manufactures
	has_many :cars, through: :car_manufactures
  validate :validates_cars_in_manufacture
	private
  def validates_cars_in_manufacture
    count = Car.where(color: color, year: year, manufacture_id: manufacture_id).count
	    if count >= 3
	      errors.add(:cars, "Max number of cars with this color in this year reached")
	    end
	end
end
