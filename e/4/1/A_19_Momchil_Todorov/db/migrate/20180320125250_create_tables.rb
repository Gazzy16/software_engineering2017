class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.text :width
      t.text :hight

      t.timestamps
    end
  end
end
