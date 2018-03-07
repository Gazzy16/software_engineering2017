class CreateComputers < ActiveRecord::Migration[5.1]
  def change
    create_table :computers do |t|
      t.string :color
      t.string :brand
      t.string :processor
      t.belongs_to :room, foreign_key: true

      t.timestamps
    end
  end
end
