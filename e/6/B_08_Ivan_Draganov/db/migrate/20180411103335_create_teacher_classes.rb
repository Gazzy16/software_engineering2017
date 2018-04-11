class CreateTeacherClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_classes do |t|
      t.integer :teacher_id
      t.integer :teacher_classID

      t.timestamps
    end
  end
end
