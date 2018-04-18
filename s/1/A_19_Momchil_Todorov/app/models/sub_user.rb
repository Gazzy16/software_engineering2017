class SubUser < ApplicationRecord
	belongs_to :user
	belongs_to :sub
	
	validates :user_id, uniqueness: {scope: :sub_id}
	validate :only_one_sub
	
	def only_one_sub
		
	end
end
