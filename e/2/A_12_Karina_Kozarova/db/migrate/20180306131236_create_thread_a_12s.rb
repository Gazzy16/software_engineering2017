class CreateThreadA12s < ActiveRecord::Migration[5.1]
  def change
    create_table :thread_a_12s do |t|
      t.string :id_process

      t.timestamps
    end
  end
end
