class SubscriptionUser < ApplicationRecord
  belongs_to :user
  belongs_to :subscription
  validate :price_under_10?

  def price_under_10?
    if self.subscription < 10
      if self.subscription.subscription_users.where(role:"teacher").count >= 2 && self.role == "teacher"
        self.errors.add(:user, "No >2 teachers available")
        throw :abort
      end

      if self.subscription.subscription_users.where(role:"student").count >=10 && self.role == "student"
        self.errors.add(:user, "No >10 students available")
        throw :abort
      end
    end
  end
end
