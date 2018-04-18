class SubscriptionUser < ApplicationRecord
	belongs_to :subscription
	belongs_to :user
=begin
	validate :validate_roles

private
	def validate_roles
		if subscription.price < 10
			subscription.price < 10
			if self.user_role.downcase == "teacher"
				if subscription.subscription_users.where(user_role: :teacher).count >= 2 && subscription.subcription_users
					errors.add(:subscription, "too much teachers")
				end

				if self.user_id == subscription.subscription_users.where(user_role: :student).user_id
					errors.add(:subscription, "can't subscribe")				
				end
			end

			if self.user_role.downcase == "student"
				if subscription.subscription_users.where(user_role: :student).count >= 10
					errors.add(:subscription, "too much students")
				end

				if self.user_id == subscription.subscription_users.where(user_role: :teacher).user_id
					errors.add(:subscription, "can't subscribe")				
				end
			end
		end	
	end
=end
end
