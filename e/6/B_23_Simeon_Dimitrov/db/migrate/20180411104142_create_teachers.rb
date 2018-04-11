class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.string :middlename
      t.string :title
      t.string :subject

      t.timestamps
    end
  end
end
