class CreateSubsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subs_users do |t|
      t.references :user, foreign_key: true
      t.references :subscription, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
