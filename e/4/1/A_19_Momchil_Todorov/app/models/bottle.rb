class Bottle < ApplicationRecord
	validates :table_id, presence: true
	belongs_to :table	
	validates_uniqueness_of :brand
end
