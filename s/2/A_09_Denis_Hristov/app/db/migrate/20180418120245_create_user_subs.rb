class CreateUserSubs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_subs do |t|
      t.integer :user_id
      t.integer :sub_id
      t.integer :role

      t.timestamps
    end
  end
end
