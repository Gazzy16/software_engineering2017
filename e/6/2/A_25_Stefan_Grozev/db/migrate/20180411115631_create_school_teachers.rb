class CreateSchoolTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :school_teachers do |t|
      t.belongs_to :school, foreign_key: true
      t.belongs_to :teacher, foreign_key: true

      t.timestamps
    end
  end
end
