class CreateManufactures < ActiveRecord::Migration[5.2]
  def change
    create_table :manufactures do |t|
      t.string :name
      t.string :location
      t.integer :computer_id

      t.timestamps
    end
  end
end
