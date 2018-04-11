class CreateTeacherSchoolClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_school_classes do |t|
      t.integer :teacher_id
      t.integer :schoolclass_id

      t.timestamps
    end
  end
end
