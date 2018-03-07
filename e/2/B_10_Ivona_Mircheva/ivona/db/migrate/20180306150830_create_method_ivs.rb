class CreateMethodIvs < ActiveRecord::Migration[5.1]
  def change
    create_table :method_ivs do |t|
      t.references :id, foreign_key: true

      t.timestamps
    end
  end
end
