class Subscriptions < ActiveRecord
  
  
      belongs_to :user (user_id)
      belongs_to :subscription
      validates_uniqueness_of: user_id, scope: :subscription_id  
    end
  
