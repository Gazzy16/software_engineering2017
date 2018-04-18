class AddIndexOnSubscriptionUsers < ActiveRecord::Migration[5.2]
  def change
  	add_index :subscriptionusers, [:subscription_id, :user_id],unique: true
  end
end
