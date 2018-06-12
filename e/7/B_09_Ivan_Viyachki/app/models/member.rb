class Member < ApplicationRecord
    has_many :team_member
    has_many :teams, through: :team_member
    
    validates :email, uniqueness: true
end
