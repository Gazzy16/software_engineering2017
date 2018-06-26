class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :second_name
      t.string :subject
      t.string :email

      t.timestamps
    end
  end
end
