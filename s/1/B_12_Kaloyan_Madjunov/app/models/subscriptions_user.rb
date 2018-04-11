class SubscriptionsUser < ApplicationRecord
	belongs_to :subscription
	belongs_to :user

	validates_presence_of :subscription
  validates_presence_of :user

  #validates_numericality_of :subscription, allow_nil: true
  #validates_numericality_of :user, allow_nil: true

  validate :subscription_price

	validate :validate_roles

private

  def subscription_price
    if subscription.price < 10
			
		end
  end

	def validate_roles
    #errors.add(:user, "too much") if user.subscription > 10
		if self.subscription.price < 10
			if self.subscription.subscriptions_users.where(role_user :teacher).count > 2
				errors.add("too much teachers")
			end

			if self.subscription.subscriptions_users.where(role_user :student).count > 10
				errors.add("too much students")
			end
		end
  end
end
