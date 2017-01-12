class AddScaleModularHouseToProjectmodularhouse < ActiveRecord::Migration[5.0]
  def change
    add_reference :project_modular_houses, :scale_modular_house, foreign_key: true
  end
end
