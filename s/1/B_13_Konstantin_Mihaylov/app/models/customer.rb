class Customer < ApplicationRecord
	has_many: subscriptions
	has_many: Subscriptions
end
