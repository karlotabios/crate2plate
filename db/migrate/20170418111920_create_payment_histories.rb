class CreatePaymentHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_histories do |t|
      t.decimal :amount_of_payment
      t.datetime :date_settled
      t.references :accounts
      t.references :order
      t.timestamps
    end
  end
end
