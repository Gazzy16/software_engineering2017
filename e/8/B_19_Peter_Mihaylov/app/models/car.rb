class Car < ApplicationRecord
	has_many :carmanufactures
	has_many :manufactures, through: :carmanufactures
end
