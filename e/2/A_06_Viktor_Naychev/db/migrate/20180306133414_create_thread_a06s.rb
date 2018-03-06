class CreateThreadA06s < ActiveRecord::Migration[5.1]
  def change
    create_table :thread_a06s do |t|
      t.belongs_to :processA06, foreign_key: true

      t.timestamps
    end
  end
end
