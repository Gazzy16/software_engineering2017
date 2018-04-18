class User < ApplicationRecord
	has_many :subscriptionusers
	has_many :subscriptions, through: :subscription_users
end
