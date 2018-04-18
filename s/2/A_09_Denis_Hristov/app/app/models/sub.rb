class Sub < ApplicationRecord
    has_many :user_subs
    has_many :users, through: :user_subs
end
