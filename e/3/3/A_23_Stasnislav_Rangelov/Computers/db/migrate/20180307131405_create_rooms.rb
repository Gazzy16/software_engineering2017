class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :room_num
      t.integer :room_size

      t.timestamps
    end
    
    create_table :computers do |t|
      t.string :color
      t.string :brand
      t.string :processor
      t.belongs_to :room
      
      t.timestamps
    end
  end
end
