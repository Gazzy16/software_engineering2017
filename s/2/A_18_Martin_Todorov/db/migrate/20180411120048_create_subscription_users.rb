class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
      t.integer :sub_type
      t.integer :user_id
      t.integer :subscription_id

      t.timestamps
    end
  end
end
