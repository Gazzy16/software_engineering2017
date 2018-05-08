class SubscriptionUser < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  validates_uniqueness_of :user_id,
        scope: :subscription_id
end
