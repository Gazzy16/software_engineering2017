class User < ApplicationRecord
	has_many :subscriptions_users
	has_many :subscription, through: :subscriptions_users
end
