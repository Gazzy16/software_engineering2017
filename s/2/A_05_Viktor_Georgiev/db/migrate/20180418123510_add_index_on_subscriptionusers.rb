class AddIndexOnSubscriptionusers < ActiveRecord::Migration[5.2]
  def change
  	add_index :subscription_users, [:subscriptonid, :userid], unique: true
  end
end
