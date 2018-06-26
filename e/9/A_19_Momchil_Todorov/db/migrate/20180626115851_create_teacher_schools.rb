class CreateTeacherSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_schools do |t|
      t.references :teacher, foreign_key: true
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
