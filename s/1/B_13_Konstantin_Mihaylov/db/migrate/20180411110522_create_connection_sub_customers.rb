class CreateConnectionSubCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :connection_sub_customers do |t|

      t.timestamps
    end
  end
end
