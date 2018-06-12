class Team < ApplicationRecord	
	validates :num, presence: true
	has_many :members
end
