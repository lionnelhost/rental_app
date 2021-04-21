class AddFirstnameAndLastnameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column(:users, :firstname, :string)
    add_column(:users, :lastname,  :string)
    add_column(:users, :phone_number, :string)
    add_column(:users, :address, :string)
    add_column(:users, :avatar, :string)
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")


    add_index :users, :phone_number
  end
end
