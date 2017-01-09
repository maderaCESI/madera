class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :clientName
      t.string :firstNameClient
      t.integer :streetNumber
      t.string :streetName
      t.integer :pc
      t.string :cityName
    end
  end
end
