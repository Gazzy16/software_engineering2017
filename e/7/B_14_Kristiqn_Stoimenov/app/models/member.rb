class Member < ApplicationRecord

	has_many :team_member_connections
	has_many :teams, through: :tems_to_member_connections

	validates :member_email, uniqueness: true

	validate :team_exists

   	def cinema_exists
          errors[:team] << "must exist" unless Team.exists?(self.team_id)
        end  
end
