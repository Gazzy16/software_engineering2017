class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :number
      t.timestamp :year
      t.string :color
      t.integer :manufacture_id

      t.timestamps
    end
  end
end
