class CreateComputers < ActiveRecord::Migration[5.2]
  def change
    create_table :computers do |t|
      t.string :model
      t.string :architecture
      t.integer :number
      t.date :date
    end
  end
end
