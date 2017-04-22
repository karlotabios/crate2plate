class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :business_email
      t.string :business_name

      t.timestamps
    end
  end
end
