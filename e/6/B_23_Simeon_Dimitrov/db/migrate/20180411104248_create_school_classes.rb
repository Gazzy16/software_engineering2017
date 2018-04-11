class CreateSchoolClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :school_classes do |t|
      t.string :school_class
      t.string :day
      t.string :teacher
      t.integer :id

      t.timestamps
    end
  end
end
