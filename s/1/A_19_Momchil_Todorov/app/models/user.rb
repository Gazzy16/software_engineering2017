class User < ApplicationRecord
	has_many :sub_users
	has_many :subs, through: :subs_users
end
