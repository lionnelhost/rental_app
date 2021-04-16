class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string :address
      t.integer :nb_pieces
      t.integer :areas
      t.integer :rent
      t.integer :caution
      t.text :description

      t.timestamps
    end
  end
end
