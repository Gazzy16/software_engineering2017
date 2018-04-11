class CreateSubsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subs_users do |t|
      t.integer :iserid
      t.integer :subscriptionid
      t.string :type

      t.timestamps
    end
  end
end
