class Table < ApplicationRecord
	has_many :bottles
	belongs_to :bottle
end
