class CreateProductClients < ActiveRecord::Migration[5.1]
  def change
    create_table :product_clients do |t|
      t.string :product_name
      t.string :client_name

      t.timestamps
    end
  end
end
