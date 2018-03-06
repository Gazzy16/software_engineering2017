class CreateThreadA24StefanAngelovs < ActiveRecord::Migration[5.1]
  def change
    create_table :thread_a24_stefan_angelovs do |t|
      t.integer :id_process

      t.timestamps
    end
  end
end
