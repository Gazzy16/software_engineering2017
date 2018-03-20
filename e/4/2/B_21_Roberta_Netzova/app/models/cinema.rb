class Cinema < ApplicationRecord
	has_many :films
	validates :name, uniqueness: true
	
end
