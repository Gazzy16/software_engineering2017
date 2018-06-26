class CreateTeacherSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_schools do |t|
      t.integer :teacher_id
      t.integer :school_id

      t.timestamps
    end
  end
end
