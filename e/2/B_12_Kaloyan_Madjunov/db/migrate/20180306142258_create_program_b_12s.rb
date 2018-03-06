class CreateProgramB12s < ActiveRecord::Migration[5.1]
  def change
    create_table :program_b_12s do |t|
      t.string :thread_id

      t.timestamps
    end
  end
end
