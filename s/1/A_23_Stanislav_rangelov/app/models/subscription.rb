class Subscription < ApplicationRecord
	has_many :subs_users
	has_many :users, through: :subs_users
end
