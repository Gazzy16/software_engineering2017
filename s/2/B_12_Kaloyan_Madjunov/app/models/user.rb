class User < ApplicationRecord
	has_many :subscriptions_users
	has_many :subscriptions, :through => 'subscriptions_users'
end
