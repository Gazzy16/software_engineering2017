class SubscriptionUser < ApplicationRecord
	belongs_to :subscription
	belongs_to :user
	
	validates_uniqueness_of :userid, scope: :subscriptionid
end
