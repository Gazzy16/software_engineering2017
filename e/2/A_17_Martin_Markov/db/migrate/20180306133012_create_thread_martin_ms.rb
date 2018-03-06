class CreateThreadMartinMs < ActiveRecord::Migration[5.1]
  def change
    create_table :thread_martin_ms do |t|
      t.references :process_martin_m, foreign_key: true

      t.timestamps
    end
  end
end
