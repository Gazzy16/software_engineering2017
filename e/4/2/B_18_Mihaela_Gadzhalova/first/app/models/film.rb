class Film < ApplicationRecord
	has_many:cinemas
	validates :cinema_id, uniqueness: true
	validates :name, uniqueness: true
	belongs_to:cinema
end
