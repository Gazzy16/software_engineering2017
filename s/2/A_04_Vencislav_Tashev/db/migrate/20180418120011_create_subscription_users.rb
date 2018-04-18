class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
      t.references :user, foreign_key: true
      t.references :subscription, foreign_key: true
      t.integer :role

      t.timestamps

    end

    add_index :subscription_users, [:user_id, :subscription_id], unique: true
  end
end
