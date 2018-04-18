class SubscriptionsUser < ApplicationRecord
	belongs_to :subscription
	belongs_to :user
	validates_uniqueness_of :user_id, scope: :subscription_id

	validates_presence_of :subscription
  validates_presence_of :user

	#validate :validate_roles_by_price
	#validate :validate_roles_in_subscription -Gospodina: Bezumno e...

private
	def validate_roles_by_price
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

	def validate_roles_in_subscription
		if self.user_role == 2
			if subscription.subscriptions_users.where(user_role: 1).count > 0
				errors.add(:subscription, "You can only be a student in this subscription.")
			end
		else self.user_role == 1
			if subscription.subscriptions_users.where(user_role: 2).count > 0
				errors.add(:subscription, "You can only be a teacher in this subscription.")
			end
		end
	end
end
