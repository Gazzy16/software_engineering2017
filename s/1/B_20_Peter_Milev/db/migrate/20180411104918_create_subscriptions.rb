class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
