class CreateProcessA19s < ActiveRecord::Migration[5.1]
  def change
    create_table :process_a19s do |t|
      t.text :name

      t.timestamps
    end
  end
end
