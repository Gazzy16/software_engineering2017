class User < ApplicationRecord
  has_many :subscription_users
  has_many :subscriptions, through: :subscription_users

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name,  presence: true, length: { maximum: 50 }

  def full_name
    "#{first_name} #{last_name}"
  end

  def to_s
    full_name
  end
end
