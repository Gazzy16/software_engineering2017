class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
      t.string :user_type
      t.integer :user_id
      t.integer :subscription_id

      t.timestamps
    end

    add_index :subscription_users, [:user_id, :subscription_id], :unique => true, :name => 'workpls'
  end
end
