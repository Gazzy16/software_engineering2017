class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :square_meters
      t.integer :number
      t.references :hotel, index: true
      t.timestamps
    end
  end
end
