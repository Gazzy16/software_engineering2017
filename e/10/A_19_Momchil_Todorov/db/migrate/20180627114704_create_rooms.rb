class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :square_meters
      t.integer :number
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
