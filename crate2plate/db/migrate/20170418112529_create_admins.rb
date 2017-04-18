class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :admin_email
      t.string :admin_username
      t.string :admin_password

      t.timestamps
    end
  end
end
