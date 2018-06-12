class Member < ApplicationRecord
	has_many :members_team
	has_many :teams, :through => 'members_teams'
	validates :email,uniqueness :true
end
