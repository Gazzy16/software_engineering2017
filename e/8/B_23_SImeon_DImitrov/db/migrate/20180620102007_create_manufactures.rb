class CreateManufactures < ActiveRecord::Migration[5.1]
  def change
    create_table :manufactures do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
