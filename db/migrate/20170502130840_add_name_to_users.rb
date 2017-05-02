class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
	add_column :users, :first_name, :varchar
	add_column :users, :last_name, :varchar
	add_column :users, :phone_number, :varchar
	add_column :users, :billing_unit_number, :varchar
	add_column :users, :billing_street, :varchar
	add_column :users, :billing_village, :varchar
	add_column :users, :billing_building, :varchar
	add_column :users, :billing_landmark, :varchar
	add_column :users, :billing_city, :varchar
	add_column :users, :delivery_unit_number, :varchar
	add_column :users, :delivery_street, :varchar
	add_column :users, :delivery_village, :varchar
	add_column :users, :delivery_building, :varchar
	add_column :users, :delivery_landmark, :varchar
	add_column :users, :delivery_city, :varchar
	add_column :users, :outstanding_balance, :decimal
	add_column :users, :account_type, :char
	add_column :users, :business_name, :varchar
  end
end

