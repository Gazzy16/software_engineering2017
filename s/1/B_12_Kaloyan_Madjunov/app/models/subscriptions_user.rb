class SubscriptionsUser < ApplicationRecord
	belongs_to :subscription
	belongs_to :user

	validates_presence_of :subscription
  validates_presence_of :user

	validate :validate_roles

private
	def validate_roles
		if subscription.price < 10
			if self.user_role.downcase == "teacher"
				if subscription.subscriptions_users.where(user_role: :teacher).count >= 2
					errors.add(:subscription, "too much teachers")
				end
			end

			if self.user_role.downcase == "student"
				if subscription.subscriptions_users.where(user_role: :student).count >= 10
					errors.add(:subscription, "too much students")
				end
			end
		end
  end
end
