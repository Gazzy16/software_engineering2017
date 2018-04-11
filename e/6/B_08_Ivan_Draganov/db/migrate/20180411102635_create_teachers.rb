class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :teacher_title
      t.string :teacher_subject

      t.timestamps
    end
  end
end
