class Manufacture < ApplicationRecord
	has_many :carmanufactures
	has_many :cars, through: :carmanufactures
end
