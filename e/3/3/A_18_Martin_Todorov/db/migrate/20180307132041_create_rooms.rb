class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :roomNumber
      t.integer :roomSize

      t.timestamps
    end
  end
end
