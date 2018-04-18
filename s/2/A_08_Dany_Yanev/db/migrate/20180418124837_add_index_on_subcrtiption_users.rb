class AddIndexOnSubcrtiptionUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :user_subscriptions, [:subscription_id, :user_id], unique: true
  end
end
