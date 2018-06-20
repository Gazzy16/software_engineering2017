class CreateComputers < ActiveRecord::Migration[5.2]
  def change
    create_table :computers do |t|
      t.string :model
      t.integer :number
      t.string :architecture
      t.timestamps

    end
  end
end
