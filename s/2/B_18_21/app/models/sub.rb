class Sub < ApplicationRecord
	has_many :sub_users
	has_many :users, through: :sub_users
end
