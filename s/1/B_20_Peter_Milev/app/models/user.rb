class User < ApplicationRecord
	has_many :user_subscription_connections
	has_many :subscriptions, through: :user_subscription_connections
end
