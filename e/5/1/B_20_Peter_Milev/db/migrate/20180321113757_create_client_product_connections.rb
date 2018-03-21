class CreateClientProductConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :client_product_connections do |t|
      t.integer :client_id
      t.integer :product_id

      t.timestamps
    end
  end
end
