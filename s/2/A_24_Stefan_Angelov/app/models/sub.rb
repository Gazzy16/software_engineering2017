class Sub < ApplicationRecord
	has_many :sub_users
	has_many :users, through: :subs_users
end
