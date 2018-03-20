class Film < ApplicationRecord
	validates :cinema_id, uniqueness: true
	validates :name, uniqueness: true
	has_and_belongs_to_many :films
end
