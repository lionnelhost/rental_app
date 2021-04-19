class CreatePaiements < ActiveRecord::Migration[6.1]
  def change
    create_table :paiements do |t|
      t.references :tenant, null: false, foreign_key: true
      t.references :apartment, null: false, foreign_key: true
      t.date :period
      t.integer :amount

      t.timestamps
    end
  end
end
