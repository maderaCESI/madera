class AddDataToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string, null: false, default: ""
    add_column :users, :lastname, :string, null: false, default: ""
    add_column :users, :role, :string, null: false, default: ""
  end
end
