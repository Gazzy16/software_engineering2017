class Member < ApplicationRecord

	has_many :team_member_connections
	has_many :teams, through: :tems_to_member_connections

	validates :member_email, uniqueness: true
	validates :member_email, confirmation: true

	validate :team_exists

end
