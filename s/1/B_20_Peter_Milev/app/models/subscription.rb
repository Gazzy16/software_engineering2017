class Subscription < ApplicationRecord
	has_many :user_subscription_connections
	has_many :users, through: :user_subscription_connections
end
