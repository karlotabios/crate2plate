class ForeignKeys < ActiveRecord::Migration[5.0]
  def change
  	add_reference :orders, :accounts, foreign_key: true

  	add_reference :order_lines, :orders, foreign_key: true
  	add_reference :order_lines, :products, foreign_key: true
  	add_reference :payment_histories, :orders, foreign_key: true
  	add_reference :payment_histories, :accounts, foreign_key: true
  	add_reference :receipts, :orders, foreign_key: true
  	add_reference :supplies, :products, foreign_key: true
  end
end
