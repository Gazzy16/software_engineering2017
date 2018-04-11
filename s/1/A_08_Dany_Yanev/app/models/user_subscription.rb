class UserSubscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  validate :can

  def can
    if self.subscription.price < 10
      if self.subscription.user_subscriptions.where(user_type: "teacher").count >= 2 && self.user_type == "teacher"
        self.errors.add(:Subscription, "- No more allowed teachers for this price")
        throw :abort
      end
      if self.subscription.user_subscriptions.where(user_type: "student").count >= 10 && self.user_type == "student"
        self.errors.add(:Subscription, "- No more allowed students for this price")
        throw :abort
      end
    end
  end
end
