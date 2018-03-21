class Film < ApplicationRecord
	has_many :cinema_films
	has_many :cinemas, :through => 'cinema_films'
<<<<<<< HEAD
											#through: :cinema_films
=======

	#validates :cinema_id, inclusion: { in: Cinema.all.map{|c| c.id},
    #message: "No such cinema!" }
>>>>>>> 46f1c2df65875e99d8adbb81f71471696cfcfcd7

	validates :name, uniqueness: true
end
