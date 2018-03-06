class CreateProcessA17MartinMarkovs < ActiveRecord::Migration[5.1]
  def change
    create_table :process_a17_martin_markovs do |t|
      t.string :name

      t.timestamps
    end
  end
end
