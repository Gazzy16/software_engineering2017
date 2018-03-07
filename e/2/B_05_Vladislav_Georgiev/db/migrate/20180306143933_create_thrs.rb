class CreateThrs < ActiveRecord::Migration[5.1]
  def change
    create_table :thrs do |t|
      t.integer :thr_id
      t.integer :value

      t.timestamps
    end
  end
end
