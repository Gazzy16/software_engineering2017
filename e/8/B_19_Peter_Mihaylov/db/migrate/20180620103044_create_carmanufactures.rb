class CreateCarmanufactures < ActiveRecord::Migration[5.2]
  def change
    create_table :carmanufactures do |t|
	      t.references :car
	      t.references :manufacture
      t.timestamps
    end
  end
end
