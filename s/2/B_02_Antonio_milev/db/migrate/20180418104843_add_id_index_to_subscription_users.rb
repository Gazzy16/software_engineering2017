class AddIdIndexToSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
	add_index :subscription_users, [:user_id, :subscription_id], unique: true
  end
end
