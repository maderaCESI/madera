class AddScaleModularHouseToCctp < ActiveRecord::Migration[5.0]
  def change
    add_reference :scale_modular_houses, :cctp, foreign_key: true
  end
end
