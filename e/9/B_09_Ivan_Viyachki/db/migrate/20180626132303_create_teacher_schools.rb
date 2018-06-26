class CreateTeacherSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_schools do |t|
      t.integer :school_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
