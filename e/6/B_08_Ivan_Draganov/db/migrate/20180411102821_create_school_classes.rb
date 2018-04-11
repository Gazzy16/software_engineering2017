class CreateSchoolClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :school_classes do |t|
      t.string :day
      t.integer :class_teacher_id

      t.timestamps
    end
  end
end
