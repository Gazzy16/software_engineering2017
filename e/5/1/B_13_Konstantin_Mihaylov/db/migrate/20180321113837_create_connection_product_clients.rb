class CreateConnectionProductClients < ActiveRecord::Migration[5.1]
  def change
    create_table :connection_product_clients do |t|
      t.integer :product_id
      t.integer :clinet_id

      t.timestamps
    end
  end
end
