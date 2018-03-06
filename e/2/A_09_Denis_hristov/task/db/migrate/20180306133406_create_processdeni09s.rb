class CreateProcessdeni09s < ActiveRecord::Migration[5.1]
  def change
    create_table :processdeni09s do |t|
      t.string :name
      t.integer :pid

      t.timestamps
    end
  end
end
