class CreateSubscriptionusers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptionusers do |t|
      t.integer :role
      t.references :user, foreign_key: true
      t.references :subscription, foreign_key: true
      t.timestamps
    end
  end
end
