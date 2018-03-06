class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :Product
      t.string :Date

      t.timestamps
    end
  end
end
