class AddSubscriptionIdToUserSubscriptions < ActiveRecord::Migration[5.1]
  def change
    add_column :user_subscriptions, :subscription_id, :integer
  end
end
