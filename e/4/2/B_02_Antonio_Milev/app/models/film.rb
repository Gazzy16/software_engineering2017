class Film < ApplicationRecord
	has_and_belongs_to_many :cinemas
	validates :name, uniqueness: true
end
