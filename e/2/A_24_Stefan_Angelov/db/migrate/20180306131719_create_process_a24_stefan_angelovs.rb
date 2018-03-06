class CreateProcessA24StefanAngelovs < ActiveRecord::Migration[5.1]
  def change
    create_table :process_a24_stefan_angelovs do |t|
      t.integer :id_process
      t.string :name

      t.timestamps
    end
  end
end
