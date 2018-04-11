class SubscriptionUser < ApplicationRecord
	belongs_to :user
	belongs_to :subscription

	validate :check_subscription

	def check_subscription
		if(subscription.price < 10)
			teachers = 0
			students = 0		
			subs = SubscriptionUser.all.select{|s| s.subscription.id == subscription_id}.map{|e| e.sub_type}
			subs << sub_type
			teachers = subs.select{|s| s == "teacher"}
			students = subs.select{|s| s == "students"}

			if(teachers.size > 2)
				errors.add(:subscription, "must be more than 10$ to connect with more teachers")
			elsif(students.size > 10)
				errors.add(:subscription, "must be more than 10$ to connect with more students")
			end
		end
	end
end
