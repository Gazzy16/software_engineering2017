class User < ApplicationRecord
	has_many :subscriptions_users
	has_many :subscription, through: :subscription_users
end
