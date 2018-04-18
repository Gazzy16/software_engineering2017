class CreateUserSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :user_subscriptions do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :subscription, foreign_key: true
      t.string :user_type

      t.timestamps
    end
  end
end
