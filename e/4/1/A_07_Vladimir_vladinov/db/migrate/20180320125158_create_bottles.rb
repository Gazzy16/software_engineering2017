class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :color
      t.string :brand, unique :true
      t.integer :table_id

      t.timestamps
    end
    add_index :bottles, :brand, unique :true
  end
end
