class CreateSchoolClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :school_classes do |t|
      t.string :school_class_day
      t.integer :teachers_id

      t.timestamps
    end
  end
end
