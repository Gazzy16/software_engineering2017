class CreateStudentKokis < ActiveRecord::Migration[5.1]
  def change
    create_table :student_kokis do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :school

      t.timestamps
    end
  end
end
