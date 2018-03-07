class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :first_name
      t.string :last_name
      t.integer :school_id

      t.timestamps
    end
  end
end
