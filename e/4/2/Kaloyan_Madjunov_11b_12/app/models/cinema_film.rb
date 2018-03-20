class CinemaFilm < ApplicationRecord
	has_many :films
	has_many :cinemas
end
