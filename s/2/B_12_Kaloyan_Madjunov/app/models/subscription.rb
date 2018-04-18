class Subscription < ApplicationRecord
	has_many :subscriptions_users
	has_many :users, :through => 'subscriptions_users'
end
