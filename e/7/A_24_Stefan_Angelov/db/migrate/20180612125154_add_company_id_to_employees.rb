class AddCompanyIdToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :company_id, :integer
  end
end
