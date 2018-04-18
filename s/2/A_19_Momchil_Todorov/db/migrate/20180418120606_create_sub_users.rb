class CreateSubUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_users do |t|
      t.integer :user_id
      t.integer :sub_id
      t.integer :role

      t.timestamps
    end
  end
end
