class CreateThreadDrags < ActiveRecord::Migration[5.1]
  def change
    create_table :thread_drags do |t|
      t.integer :t_id
      t.integer :value

      t.timestamps
    end
  end
end
