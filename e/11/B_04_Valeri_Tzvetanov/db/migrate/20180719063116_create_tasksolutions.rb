class CreateTasksolutions < ActiveRecord::Migration
  def change
    create_table :tasksolutions do |t|
      t.string :texts
      t.string :status
      t.integer :confirmed
      t.integer :sid

      t.timestamps null: false
    end
  end
end
