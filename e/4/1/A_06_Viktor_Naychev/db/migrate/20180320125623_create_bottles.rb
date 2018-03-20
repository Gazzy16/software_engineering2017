class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :color
      t.string :brand, unique: true
      t.belongs_to :table, foreign_key: true

      t.timestamps
    end
  end
end
