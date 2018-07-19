class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :manc
      t.string :model
      t.integer :price
      t.integer :bid

      t.timestamps null: false
    end
  end
end
