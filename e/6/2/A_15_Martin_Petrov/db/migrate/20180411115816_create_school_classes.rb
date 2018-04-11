class CreateSchoolClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :school_classes do |t|
      t.string :school_classday
      t.string :teacher_id

      require :teacher_id
      t.timestamps
    end
  end
end
