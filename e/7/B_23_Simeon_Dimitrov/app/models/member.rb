class Member < ApplicationRecord
	has_many :Team_members
    	has_many :teams, through: :Team_members

	validates :email, uniqueness: true  
end
