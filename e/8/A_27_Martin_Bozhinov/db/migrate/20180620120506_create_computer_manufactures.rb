class CreateComputerManufactures < ActiveRecord::Migration[5.2]
  def change
    create_table :computer_manufactures do |t|
    	t.references :computers
    	t.references :manufactures
    end
  end
end
