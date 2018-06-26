class CreateCarManufactures < ActiveRecord::Migration[5.1]
  def change
    create_table :car_manufactures do |t|
      t.integer :car_id
      t.integer :manufacture_id

      t.timestamps
    end
  end
end
