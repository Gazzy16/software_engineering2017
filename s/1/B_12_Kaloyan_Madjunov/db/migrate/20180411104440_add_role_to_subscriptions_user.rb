class AddRoleToSubscriptionsUser < ActiveRecord::Migration[5.1]
  def change
    add_column :subscriptions_users, :role, :string
  end
end
