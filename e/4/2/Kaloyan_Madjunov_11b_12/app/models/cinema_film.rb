class CinemaFilm < ApplicationRecord
	belongs_to :film
	belongs_to :cinema
end
