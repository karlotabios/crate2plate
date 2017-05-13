class ForeignKeyRemoval < ActiveRecord::Migration[5.0]
  def change
	remove_reference :orders, :accounts, foreign_key: true
	remove_reference :orders, :delivery, foreign_key: true
	remove_reference :order_lines, :orders, foreign_key: true
	remove_reference :order_lines, :products, foreign_key: true
	remove_reference :payment_histories, :orders, foreign_key: true
	remove_reference :payment_histories, :accounts, foreign_key: true
	remove_reference :receipts, :orders, foreign_key: true
	remove_reference :supplies, :products, foreign_key: true
	remove_reference :orders, :users, foreign_key: true
	remove_reference :payment_histories, :users, foreign_key: true

	add_reference :orders, :account, foreign_key: true
	add_reference :orders, :delivery, foreign_key: true
	add_reference :order_lines, :order, foreign_key: true
	add_reference :order_lines, :product, foreign_key: true
	add_reference :payment_histories, :order, foreign_key: true
	add_reference :payment_histories, :account, foreign_key: true
	add_reference :receipts, :order, foreign_key: true
	add_reference :supplies, :product, foreign_key: true
	add_reference :orders, :user, foreign_key: true
	add_reference :payment_histories, :user, foreign_key: true
  end
end
