class Subscription < ApplicationRecord
	has_many :subscriptions_users
	has_many :users, :through => 'subscriptions_users'
	validates_uniqueness_of :user_id, scope: :subscription_id
end
