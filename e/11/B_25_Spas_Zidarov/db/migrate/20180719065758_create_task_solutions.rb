class CreateTaskSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :task_solutions do |t|
      t.string :picture
      t.integer :status
      t.boolean :confirmed

      t.timestamps
    end
  end
end
