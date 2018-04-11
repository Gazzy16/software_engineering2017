class CreateSchoolClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :school_classes do |t|
      t.string :school_class
      t.integer :teacher_id

      t.timestamps
    end
  end
end
