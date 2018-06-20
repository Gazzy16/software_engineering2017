class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :number
      t.string :color
      t.timestamps :year_manifactured

      t.timestamps null: false
    end
  end
end
