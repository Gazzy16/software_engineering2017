class Team < ApplicationRecord
has_many :members_team
has_many :members, :through => 'members_teams'
end
