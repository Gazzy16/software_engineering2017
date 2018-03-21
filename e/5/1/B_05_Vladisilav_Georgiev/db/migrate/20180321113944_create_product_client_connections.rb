class CreateProductClientConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :product_client_connections do |t|
      t.integer :product_id
      t.integer :client_id

      t.timestamps
    end
  end
end
