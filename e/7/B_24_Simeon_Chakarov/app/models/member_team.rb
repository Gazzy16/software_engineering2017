class MemberTeam < ApplicationRecord
	belongs_to :team
	belongs_to :member
end
