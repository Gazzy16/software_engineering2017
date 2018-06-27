class Specialty < ApplicationRecord

	belongs_to :School

	validate :number, :inclusion => 18..30
end
