class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.datetime :date_delivered

      t.timestamps
    end
  end
end
