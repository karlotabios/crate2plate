class Tanginatalagamigration < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :billing_unit_number, :varchar
	add_column :orders, :billing_street, :varchar
	add_column :orders, :billing_village, :varchar
	add_column :orders, :billing_building, :varchar
	add_column :orders, :billing_landmark, :varchar
	add_column :orders, :billing_city, :varchar
  end
end
