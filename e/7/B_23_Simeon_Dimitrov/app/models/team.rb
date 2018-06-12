class Team < ApplicationRecord
	has_many :Team_members
	has_many :members, through: :Team_members
end
