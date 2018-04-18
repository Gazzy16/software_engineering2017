class AddIndexOnUserSubscriptions < ActiveRecord::Migration[5.1]
  def change
    add_index :user_subscriptions, [:user_id, :subscription_id], unique: true
  end
end
