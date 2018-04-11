class CreateUserSubscribtionConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :user_subscribtion_connections do |t|
      t.integer :user_id
      t.integer :subscription_id
      t.string :role

      t.timestamps
    end
  end
end
