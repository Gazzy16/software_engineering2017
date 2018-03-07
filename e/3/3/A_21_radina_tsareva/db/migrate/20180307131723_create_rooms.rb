class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :roomsize
      t.integer :roomnumber

      t.timestamps
    end
  end
end
