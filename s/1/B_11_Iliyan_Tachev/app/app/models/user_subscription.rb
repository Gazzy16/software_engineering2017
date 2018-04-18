class UserSubscription < ActiveRecord::Base
	belongs_to :user
	belongs_to :subscription
	validate :role_limits
	
	
		def role_limits
			t = 0
			s = 0
				self.subscription.user_subscriptions.each do |user_subscription|
					if user_subscription.type_of == "Teacher"
						t += 1
					end
					if user_subscription.type_of == "Student"
						s += 1
					end
					if t == 2 || s == 2
					errors.add(self.type_of, "Cannot create another subscription user with same role")
					end
				end
		end
end
