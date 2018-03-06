class CreateThreadsLaskins < ActiveRecord::Migration[5.1]
  def change
    create_table :threads_laskins do |t|
      t.belongs_to :processLaskin, foreign_key: true

      t.timestamps
    end
  end
end
