class AddIndexOnSub < ActiveRecord::Migration[5.1]
  def change
    add_index :user_subs, [:sub_id, :user_id], unique: true
  end
end
