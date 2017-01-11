class AddDataToClients < ActiveRecord::Migration[5.0]
  def change
    change_table :clients do |t|
      t.string :phonenumber
      t.string :email
    end
  end
end
