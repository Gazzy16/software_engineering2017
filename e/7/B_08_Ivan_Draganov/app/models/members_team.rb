class MembersTeam < ApplicationRecord
	belongs_to :team
	belongs_to :member
	validates_presence_of :team
  validates_presence_of :member
end

private
	def validate_color
		member.teams.each do |t|
			if t.color == team.color 
				errors.add(:team, "cant add in team of same color")
			end
		end
	end
