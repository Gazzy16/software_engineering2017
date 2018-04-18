class User < ApplicationRecord
    has_many: SubscriptionUsers
    has_many: Subscriptions, through: SubscriptionUsers
end
