class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :first
      t.string :second
      t.string :subject
      t.string :email

      t.timestamps
    end
  end
end
