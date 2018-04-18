class Subscription < ApplicationRecord
	has_many :subscriptions_users
	has_many :users, through: :subscription_users
end
