class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.string :width
      t.string :height

      t.timestamps
    end
  end
end
