class User < ApplicationRecord
  has_many :subs_users
  has_many :subscriptions, through: :subs_users
end
