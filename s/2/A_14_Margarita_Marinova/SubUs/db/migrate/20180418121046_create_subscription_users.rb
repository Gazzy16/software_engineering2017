class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
      t.integer :role
      t.belongs_to :user, foreign_key: true
      t.belongs_to :subscription, foreign_key: true

      t.timestamps
    end
  end
end
