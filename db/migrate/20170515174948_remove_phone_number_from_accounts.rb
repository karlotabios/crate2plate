class RemovePhoneNumberFromAccounts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :accounts, :phone_number, :integer
  	add_column :accounts, :phone_number, :string
  end
end
