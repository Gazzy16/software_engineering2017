class User < ApplicationRecord
    has_many :user_subs
    has_many :subs, through: :user_subs
end
