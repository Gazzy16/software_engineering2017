class AddIndexToSubscriptionsUsers < ActiveRecord::Migration[5.1]
  def change
		add_index :subscriptions_users,
				[:subscription_id, :user_id], unique: true
  end
end
