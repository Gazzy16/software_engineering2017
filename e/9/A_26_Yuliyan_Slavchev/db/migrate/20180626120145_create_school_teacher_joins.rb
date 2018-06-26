class CreateSchoolTeacherJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :school_teacher_joins do |t|
      t.references :school, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
