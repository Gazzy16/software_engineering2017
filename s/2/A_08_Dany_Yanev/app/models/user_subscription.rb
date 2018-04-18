class UserSubscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  validate :can

  def can
    if self.subscription.price < 10
      if self.subscription.user_subscriptions.where(user_type: "2").count >= 2 && self.user_type == "2"
        self.errors.add(:Subscription, "- No more allowed teachers for this price")
        throw :abort
      end
      if self.subscription.user_subscriptions.where(user_type: "1").count >= 10 && self.user_type == "1"
        self.errors.add(:Subscription, "- No more allowed students for this price")
        throw :abort
      end
    end

    if self.subscription.user_subscriptions.where(user_id: self.user_id).count > 0
      self.errors.add(:Subscription, "- User already subscribed")
      throw :abort
    end
  end
end
