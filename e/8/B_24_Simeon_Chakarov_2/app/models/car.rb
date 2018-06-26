class Car < ApplicationRecord
	belongs_to :manufacture
	validate do
    if color != "red" && color !="green" && color != "blue"
      errors.add(:color, "Can be only green, red, blue")
    end
  end
  validate :validates_cars_in_manufacture
  private
  def validates_cars_in_manufacture
    count = Car.where(color: color, year: year, manufacture_id: manufacture_id).count
	    if count >= 3
	      errors.add(:cars, "Max number of cars with this color in this year reached")
	    end
	end
end