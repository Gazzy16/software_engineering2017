class AddIndexOnSubUsers < ActiveRecord::Migration[5.1]
  def change
	add_index :sub_users, [:sub_id, :user_id], unique: true
  end
end
