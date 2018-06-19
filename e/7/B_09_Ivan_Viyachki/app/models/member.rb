class Member < ApplicationRecord
    has_many :team_member
    has_many :teams, through: :team_member
    
    validates :email, presence: true, uniqueness: true,
      format: { with: /\A[^@\s]+@([^@.\s]+.)+[^@.\s]+\z/ ,
      :message => ": Please enter a valid email" }

end
