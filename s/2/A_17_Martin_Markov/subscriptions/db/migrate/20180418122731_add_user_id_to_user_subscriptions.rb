class AddUserIdToUserSubscriptions < ActiveRecord::Migration[5.1]
  def change
    add_column :user_subscriptions, :user_id, :integer
  end
end
