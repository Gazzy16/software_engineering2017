
class TeamMember < ApplicationRecord
    belongs_to :member
    belongs_to :team
    
   # validates :team_id, uniqueness: { scope: :member_id }


    def self.validColor(teamMember)
		team_members = TeamMember.all.select { |team_member| team_member.member_id == teamMember.member_id }

	    team_members.each do |team_member|
			teams = Team.find(team_member.team_id )

				if teams.color == Team.find(teamMember.team_id).color
					return false
				else
					return true
				end
	  end
	end
end

