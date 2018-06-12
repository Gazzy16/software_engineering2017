class Team < ApplicationRecord
	has_many :team_member_connections
	has_many :members, through: :tems_to_member_connections
end
