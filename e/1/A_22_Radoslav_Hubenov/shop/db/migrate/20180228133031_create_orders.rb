class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :article, foreign_key: true
      t.date :ordered_at

      t.timestamps
    end
  end
end
