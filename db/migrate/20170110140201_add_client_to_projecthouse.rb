class AddClientToProjecthouse < ActiveRecord::Migration[5.0]
  def change
    add_reference :project_modular_houses, :client, foreign_key: true
  end
end
