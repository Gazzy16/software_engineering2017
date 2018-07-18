class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :area
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
