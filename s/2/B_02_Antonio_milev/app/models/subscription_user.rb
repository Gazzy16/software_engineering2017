class SubscriptionUser < ApplicationRecord
	belongs_to :user
	belongs_to :subscription

	#validates :user_id, uniqueness: { scope: :subscription_id , message: "Combination of user and subscription already exists"}
end
