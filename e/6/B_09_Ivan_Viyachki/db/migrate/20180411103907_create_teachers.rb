class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers, id: false do |t|
      t.primary_key :id
      t.string :first_name
      t.string :middle_name
      t.string :title
      t.string :subject

      t.timestamps
    end
  end
end
