class RemoveOldSubscriptionsUser < ActiveRecord::Migration[5.1]
  def change
		drop_table :subscriptions_users
  end
end
