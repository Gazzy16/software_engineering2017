class AddRoleToUserSubscriptions < ActiveRecord::Migration[5.1]
  def change
    add_column :user_subscriptions, :role, :integer
  end
end
