class Subscription < ApplicationRecord
  has_many :subs_users
  has_many :users, through: :subs_users

  validates_presence_of :price

  def students
    subs_users.select { |su| su.type == 'Student' }
  end

  def teachers
    subs_users.select { |su| su.type == 'Teacher' }
  end
end
