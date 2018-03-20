class CreateMethodsKokis < ActiveRecord::Migration[5.1]
  def change
    create_table :methods_kokis do |t|
      t.string :commenter
      t.text :body
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
