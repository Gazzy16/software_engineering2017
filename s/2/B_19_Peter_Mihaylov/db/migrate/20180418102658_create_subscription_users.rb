class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
      t.integer :subscription_id
      t.integer :user_id
      t.string :user_role

      t.timestamps
    end
  end
end
