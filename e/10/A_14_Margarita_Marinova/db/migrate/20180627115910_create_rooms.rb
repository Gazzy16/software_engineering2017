class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :square_meters
      t.integer :number
      t.integer :hotel_id

      t.timestamps
    end
  end
end
