class CreateProcessA22RadoslavHubenovs < ActiveRecord::Migration[5.1]
  def change
    create_table :process_a22_radoslav_hubenovs do |t|
      t.string :name

      t.timestamps
    end
  end
end
