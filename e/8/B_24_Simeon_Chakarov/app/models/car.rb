class Car < ApplicationRecord
	has_many :car_manufactures
	has_many :manufactures, through: :car_manufactures
	validate do
    if color != "red" && color !="green" && color != "blue"
      errors.add(:color, "Can be only green, red, blue")
    end
  end

end
