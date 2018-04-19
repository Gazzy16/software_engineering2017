class UserSubscriptionValidator < ActiveModel::Validator
  def validate(record)
    subs = UserSubscription.where(:subscription_id => record.subscription_id).first

    if record.subscription.price < 10 and
      ((subs.where(:user_type => '2').count > 2 and record.user_type == '2') or
      (subs.where(:user_type => '1').count > 10 and record.user_type == '1'))

      record.errors.add(:subscription, 'doesn\'t support more participants of this type.')
      throw :abort
    end
  end
end

class UserSubscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  validates :user_type, acceptance: {accept: ['1', '2']}
  validates_with UserSubscriptionValidator
end
