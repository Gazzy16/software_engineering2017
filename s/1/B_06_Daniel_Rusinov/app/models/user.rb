class User < ApplicationRecord
	has_many :user_subscribtion_connections
	has_many :subscriptions, through: :user_subscribtion_connections
end
