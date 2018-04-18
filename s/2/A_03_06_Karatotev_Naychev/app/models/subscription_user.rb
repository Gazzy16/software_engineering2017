class SubscriptionUserValidator < ActiveModel::Validator
  def validate(record)
    subs = SubscriptionUser.where(:subscription_id => record.subscription_id)

    if record.subscription.price < 10 and
      ((subs.where(:user_type => 'teacher').count > 2 and record.user_type == 'teacher') or
      (subs.where(:user_type => 'student').count > 10 and record.user_type == 'student'))

      record.errors.add(:subscription, 'doesn\'t support more participants of this type.')
      throw :abort
    end
  end
end


class SubscriptionUser < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  validates :user_type, acceptance: {accept: ['teacher', 'student']}
  validates_with SubscriptionUserValidator
  
  validates_uniqueness_of :user_id, scope: :subscription_id
end
