class User < ApplicationRecord

has_many :subscriptions_users
has_many :subscriptions, through: :subscription_users
end
