class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :amount_due
      t.string :mode_of_payment
      t.string :status
      t.datetime :date_ordered
      t.string :comments
      t.references :account
      t.references :delivery

      t.timestamps
    end
  end
end
