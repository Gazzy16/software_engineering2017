class UserSubscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  # validates :subscription, uniqueness: { scope: :user }
  validates_uniqueness_of :user, scope: :subscription
end
