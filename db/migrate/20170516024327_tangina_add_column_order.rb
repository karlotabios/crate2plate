class TanginaAddColumnOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :delivery_unit_number, :varchar
	add_column :orders, :delivery_street, :varchar
	add_column :orders, :delivery_village, :varchar
	add_column :orders, :delivery_building, :varchar
	add_column :orders, :delivery_landmark, :varchar
	add_column :orders, :delivery_city, :varchar
  end
end