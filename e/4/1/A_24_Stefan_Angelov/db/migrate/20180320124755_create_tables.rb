class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.double :table_width
      t.double :table_height

      t.timestamps
    end
  end
end
