class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.decimal :total_amount_due
      t.references :order
      
      t.timestamps
    end
  end
end
