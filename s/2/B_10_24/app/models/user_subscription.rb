class UserSubscription < ApplicationRecord
	belongs_to :user
	belongs_to :subscription
	validate :price_limits
	
	
	def price_limits
 
		if self.subscription.user_subscriptions.where(user_id: user.id).count > 0
			errors.add(self.type_of, "Cannot create another role for user")
		end
	end

end
