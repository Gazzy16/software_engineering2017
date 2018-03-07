class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :room_size

      t.timestamps
    end
  end
end
