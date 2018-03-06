class CreateIdChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :id_checks do |t|
      t.integer :Test_Thread_id

      t.timestamps
    end
  end
end
