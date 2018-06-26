class Manufacture < ApplicationRecord
	has_many :computers
	belongs_to :computer
end
