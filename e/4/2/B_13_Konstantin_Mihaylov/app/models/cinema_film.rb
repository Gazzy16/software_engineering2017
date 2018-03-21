class CinemaFilm < ApplicationRecord
	has_many :cinemas
	has_many :film
end
