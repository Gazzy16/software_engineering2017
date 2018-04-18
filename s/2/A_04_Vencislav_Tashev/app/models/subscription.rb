class Subscription < ApplicationRecord
  has_many :subscription_users
  has_many :users, through: :subscription_users

  validates :price, numericality: { greater_than_or_equal_to: 0 }

  def to_s
    "#{self.class.name} (#{price}$)"
  end
end
