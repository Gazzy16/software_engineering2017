class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :iden
      t.date :daten

      t.timestamps
    end
  end
end
