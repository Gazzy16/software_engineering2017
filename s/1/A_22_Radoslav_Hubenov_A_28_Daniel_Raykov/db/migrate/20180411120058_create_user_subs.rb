class CreateUserSubs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_subs do |t|
      t.references :user, foreign_key: true
      t.references :sub, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
