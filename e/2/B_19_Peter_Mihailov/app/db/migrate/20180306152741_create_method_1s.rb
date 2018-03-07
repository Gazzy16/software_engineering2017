class CreateMethod1s < ActiveRecord::Migration[5.1]
  def change
    create_table :method_1s do |t|
      t.integer :program_id

      t.timestamps
    end
  end
end
