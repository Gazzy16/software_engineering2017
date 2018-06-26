class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :number
      t.string :color
      t.datetime :year

      t.timestamps
    end
  end
end
