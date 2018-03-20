class Film < ApplicationRecord
	validates :id_sinema, inclusion: {in: Film.all.map{|t| t.id}, message "No film with such id"}
end
