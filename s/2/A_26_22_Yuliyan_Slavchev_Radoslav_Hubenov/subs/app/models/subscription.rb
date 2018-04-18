class Subscription < ApplicationRecord
    has_many: SubscriptionUsers
    has_many: Users, through: SubscriptionUsers
end


