class CreateTaskSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :task_solutions do |t|
      t.string :picture
      t.string :status
      t.boolean :confirmed
      t.integer :task_id

      t.timestamps
    end
  end
end
