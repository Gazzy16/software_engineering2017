class Subscription < ApplicationRecord
	has_many: connection_sub_customer
	has_many: customer 
end
