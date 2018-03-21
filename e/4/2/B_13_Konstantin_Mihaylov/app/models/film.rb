class Film < ApplicationRecord
	 has_many :cinemas_films
	 has_many :cinemas, through: :cinemas_films
	 validates :name, uniqueness: true
end
