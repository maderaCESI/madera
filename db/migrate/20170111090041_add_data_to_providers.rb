class AddDataToProviders < ActiveRecord::Migration[5.0]
  def change
    change_table :providers do |t|
    ## Lockable
      t.integer :streetNumber
      t.string :streetName
      t.integer :pc
      t.string :cityName
      t.string :phonenumber
      t.string :email
    end
  end
end
