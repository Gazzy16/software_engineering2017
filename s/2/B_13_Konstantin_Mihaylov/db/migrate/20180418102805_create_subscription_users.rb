class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
      t.decimal :user_id
      t.decimal :subscription_id
      t.decimal :role

      t.timestamps
    end
  end
end
