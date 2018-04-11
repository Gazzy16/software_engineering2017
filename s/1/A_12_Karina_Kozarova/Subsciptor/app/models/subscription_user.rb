class SubscriptionUser < ApplicationRecord
  belongs_to :user
  belongs_to :subscription
  validate :subscription, if: :all_valid?


  def all_valid
  	price_under_10 && over_two_teachers && over_ten_students
  end

  def price_under_10?

  end


  def over_two_teachers?

  end

  def over_ten_students?

  end
end
