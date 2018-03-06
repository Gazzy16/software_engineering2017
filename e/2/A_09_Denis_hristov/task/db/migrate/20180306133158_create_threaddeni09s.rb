class CreateThreaddeni09s < ActiveRecord::Migration[5.1]
  def change
    create_table :threaddeni09s do |t|
      t.belongs_to :processdeni09, foreign_key: true

      t.timestamps
    end
  end
end
