class User < ApplicationRecord
  validates :name, presence: true

  has_many :user_subscriptions
  has_many :subscriptions, through: :user_subscriptions
end
