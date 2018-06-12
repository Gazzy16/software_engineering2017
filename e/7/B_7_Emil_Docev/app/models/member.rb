class Member < ApplicationRecord
    has_many :teams
    validates :email, presence: true
end
