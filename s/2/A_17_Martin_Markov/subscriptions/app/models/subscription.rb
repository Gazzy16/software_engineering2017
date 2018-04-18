class Subscription < ApplicationRecord
  validates :price, presence: true

  has_many :user_subscriptions
  has_many :users, through: :user_subscriptions
end
