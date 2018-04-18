class SubscriptionUser < ApplicationRecord
    belongs_to :subscription
    belongs_to :user
    validates :user, uniqueness: { scope: :subscription,
        message: "Cannot have user with two roles in the same subscription" }
end
