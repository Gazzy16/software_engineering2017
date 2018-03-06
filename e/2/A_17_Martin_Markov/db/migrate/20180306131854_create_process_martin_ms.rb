class CreateProcessMartinMs < ActiveRecord::Migration[5.1]
  def change
    create_table :process_martin_ms do |t|
      t.string :name

      t.timestamps
    end
  end
end
