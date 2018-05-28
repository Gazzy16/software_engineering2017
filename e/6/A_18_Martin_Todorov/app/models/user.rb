class User < ApplicationRecord
    # belongs_to :subscription
    has_many :subscription_users
    has_many :subscriptions, through: :subscription_user

end
