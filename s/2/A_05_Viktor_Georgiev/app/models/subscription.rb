class Subscription < ApplicationRecord
	has_many :subscriptionusers
	has_many :users, through: :subscription_users
end
