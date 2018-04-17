class AddPictureFieldToArticles < ActiveRecord::Migration[5.1]
  def change
    change_table :articles do |t|
      t.string :picture
    end
  end
end
