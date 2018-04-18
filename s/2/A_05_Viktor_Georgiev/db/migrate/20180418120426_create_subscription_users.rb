class CreateSubscriptionUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscription_users do |t|
     # t.integer :id
      t.references :userid
      t.references :subscriptionid
      t.integer :role

      t.timestamps
    end
  end
end
