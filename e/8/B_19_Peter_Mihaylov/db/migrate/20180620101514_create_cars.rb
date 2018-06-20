class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :number
      t.string :color
      t.time :year

      t.timestamps
    end
  end
end
