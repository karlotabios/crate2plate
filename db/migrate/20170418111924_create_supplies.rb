class CreateSupplies < ActiveRecord::Migration[5.0]
  def change
    create_table :supplies do |t|
      t.string :quantity
      t.datetime :date_of_supply
      t.references :product

      t.timestamps
    end
  end
end
