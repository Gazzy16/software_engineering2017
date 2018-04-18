class CreateUsersSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :users_subscriptions do |t|
      t.integer :user_id
      t.integer :subscription_id
      t.string :role

      t.timestamps
    end
  end
end
