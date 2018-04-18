class SubscriptionUser < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  enum role: { teacher: 1, student: 2 }
  validates :role, presence: true

  validates_uniqueness_of :user_id, scope: [:subscription_id]

  def to_s
    "#{user} (#{subscription})"
  end
end
