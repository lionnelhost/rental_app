class AddStatusToTenant < ActiveRecord::Migration[6.1]
  def change
    add_column :tenants, :status, :string
  end
end
