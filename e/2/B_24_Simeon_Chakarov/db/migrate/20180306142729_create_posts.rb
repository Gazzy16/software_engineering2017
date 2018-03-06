class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :id_
      t.integer :value

      t.timestamps
    end
  end
end
