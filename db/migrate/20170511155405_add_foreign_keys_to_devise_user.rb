class AddForeignKeysToDeviseUser < ActiveRecord::Migration[5.0]
  def change
  	add_reference :orders, :users, foreign_key: true
	add_reference :payment_histories, :users, foreign_key: true
  end
end
