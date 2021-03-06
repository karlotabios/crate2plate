class CreateOrderLines < ActiveRecord::Migration[5.0]
  def change
    create_table :order_lines do |t|
      t.decimal :subtotal_amount
      t.decimal :quantity
      t.references :product
      t.references :order

      t.timestamps
    end
  end
end
