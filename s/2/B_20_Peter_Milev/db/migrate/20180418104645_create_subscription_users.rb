class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
		t.references :user
		t.references :subscription
      	t.string :role

      	t.timestamps
    end
  end
end
