class Bottle < ApplicationRecord
	has_many :tables
	belongs_to :table

	validates :table_id, presence :true
	validates :brand, uniqueness :true
end
