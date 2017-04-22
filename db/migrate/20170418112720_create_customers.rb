class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_email
      t.string :customer_username
      t.string :customer_password

      t.timestamps
    end
  end
end
