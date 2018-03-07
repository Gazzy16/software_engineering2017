class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.references :room, foreign_key: true
      t.string :color
      t.string :brand
      t.string :processor

      t.timestamps
    end
  end
end
