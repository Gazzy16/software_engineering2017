class SubscriptionUser < ApplicationRecord
	belongs_to :subscription
	belongs_to :user

	validates_uniqueness_of :user_id, scope: :subskription_id
end
