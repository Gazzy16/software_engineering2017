class AddRoleToSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :subscription_users, :role, :int
  end
end
