class CreateThreadB12s < ActiveRecord::Migration[5.1]
  def change
    create_table :thread_b_12s do |t|
      t.integer :value

      t.timestamps
    end
  end
end
