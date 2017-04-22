class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.integer :billing_unit_number
      t.string :billing_street
      t.string :billing_village
      t.string :billing_building
      t.string :billing_landmark
      t.string :billing_city
      t.integer :delivery_unit_number
      t.string :delivery_street
      t.string :delivery_village
      t.string :delivery_building
      t.string :delivery_landmark
      t.string :delivery_city
      t.decimal :outstanding_balance
      t.string :account_type

      t.timestamps
    end
  end
end
