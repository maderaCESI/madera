class AddUserToProjectmodularhouse < ActiveRecord::Migration[5.0]
  def change
    add_reference :project_modular_houses, :user, foreign_key: true
  end
end
