class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.text :color
      t.text :brand
      t.text :processor
      t.integer :room_id

      t.timestamps
    end
  end
end
