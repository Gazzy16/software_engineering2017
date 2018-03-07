class CreateThreadds < ActiveRecord::Migration[5.1]
  def change
    create_table :threadds do |t|
      t.string :classname
      t.integercd :value
      t.string :..

      t.timestamps
    end
  end
end
