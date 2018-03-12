class Computer < ApplicationRecord
	belongs_to :room
	validates_uniqueness_of :processor
end
