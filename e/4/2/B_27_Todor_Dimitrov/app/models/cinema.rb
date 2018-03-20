class Cinema < ApplicationRecord
	validates :id_film, inclusion: {in: Cinema.all.map{|t| t.id}, message "No film with such id"}
end
	