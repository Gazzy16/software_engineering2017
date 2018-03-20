class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :color
      t.string :brand
      t.references :table, foreign_key: true

      t.timestamps
    end
  end
end
