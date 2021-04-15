class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone_number
      t.string :profession
      t.string :identity_number
      t.string :nationality
      t.date :date_of_birth

      t.timestamps
    end
  end
end
