class CreateSubs < ActiveRecord::Migration[5.1]
  def change
    create_table :subs do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
