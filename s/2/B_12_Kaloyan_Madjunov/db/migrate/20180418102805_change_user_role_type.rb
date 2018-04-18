class ChangeUserRoleType < ActiveRecord::Migration[5.1]
  def change
		change_column :subscriptions_users, :user_role, :integer
  end
end
