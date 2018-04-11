class SubscriptionUser < ApplicationRecord
  belongs_to :user
  belongs_to :subscription
end
