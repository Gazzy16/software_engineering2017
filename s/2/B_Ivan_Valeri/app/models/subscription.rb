class Subscription < ApplicationRecord

has_many :subscription_users
has_many :user, through: :subscription_users
end
