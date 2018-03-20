class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :color
      t.string :brand
      t.string :tableid

      t.timestamps
    end
  end
end
