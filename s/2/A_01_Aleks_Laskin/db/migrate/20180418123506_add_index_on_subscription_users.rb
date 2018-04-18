class AddIndexOnSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :subscription_users, [:subscription_id, :user_id], unique: true
  end
end
