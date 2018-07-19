class Specialty < ApplicationRecord

	belongs_to :School

	validates :number, :inclusion => 18..30
end
