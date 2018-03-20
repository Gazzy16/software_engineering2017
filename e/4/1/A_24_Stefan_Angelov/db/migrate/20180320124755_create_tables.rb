class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.integer :table_width
      t.integer :table_height

      t.timestamps
    end
  end
end
