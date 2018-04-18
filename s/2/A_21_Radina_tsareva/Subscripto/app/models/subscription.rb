class Subscription < ApplicationRecord
	has_many :subscriptionusers
	has_many :users, through: :subscriptionusers
end
