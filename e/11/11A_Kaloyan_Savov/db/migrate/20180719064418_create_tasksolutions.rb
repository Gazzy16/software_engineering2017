class CreateTasksolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :tasksolutions do |t|
      t.string :tasksolution
      t.string :status
      t.integer :confirmed

      t.timestamps
    end
  end
end
