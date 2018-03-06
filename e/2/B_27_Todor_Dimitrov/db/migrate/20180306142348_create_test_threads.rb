class CreateTestThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :test_threads do |t|
      t.integer :id

      t.timestamps
    end
  end
end
