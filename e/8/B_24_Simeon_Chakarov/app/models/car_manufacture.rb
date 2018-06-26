class CarManufacture < ApplicationRecord
	belongs_to :car
	belongs_to :manufacture
end
