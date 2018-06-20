class MemberTeam < ApplicationRecord
	belongs_to :member
	belongs_to :team
	validate :confirm_team
	def confirm_team
		members_records = MemberTeam.where(["member_id = ?", self.member_id])
		new_team = Team.find_by id: self.team_id
        members_records.map{|m| m.team.color == new_team.color ? errors.add(:team_id,"Already have team with that color") : ""}
	end
end
