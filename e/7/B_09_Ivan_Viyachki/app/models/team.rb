class Team < ApplicationRecord
    has_many :team_member
    has_many :members, through: :team_member

    
end
