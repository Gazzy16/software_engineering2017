class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
      t.integer :subskription_id
      t.integer :user_id
      t.integer :role

      t.timestamps
    end
  end
end
