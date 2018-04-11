class Subscription < ApplicationRecord
	has_many :user_subscribtion_connections
	has_many :users, through: :user_subscribtion_connections
end
