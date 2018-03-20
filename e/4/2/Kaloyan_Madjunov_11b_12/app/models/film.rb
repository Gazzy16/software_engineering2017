class Film < ApplicationRecord
	has_many :cinema_films
	has_many :cinemas, :through => 'cinema_films'

	validates :cinema_id, inclusion: { in: Cinema.all.map{|c| c.id},
    message: "No such cinema!" }

	validates :name, uniqueness: true
end
