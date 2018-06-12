class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.integer :number

      t.timestamps
    end
    add_index :companies, :number, unique: true
  end
end
