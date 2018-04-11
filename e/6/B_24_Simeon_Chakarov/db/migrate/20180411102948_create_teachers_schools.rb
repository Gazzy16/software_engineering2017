class CreateTeachersSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers_schools do |t|
      t.integer :id_teacher
      t.integer :id_school

      t.timestamps
    end
  end
end
