class CreateSubscriptionUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscription_users do |t|
      t.integer :user_id
      t.integer :subscription_id
      t.integer :role

      t.timestamps
    end
  end
end
