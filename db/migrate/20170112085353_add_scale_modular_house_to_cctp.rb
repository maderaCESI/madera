class AddScaleModularHouseToCctp < ActiveRecord::Migration[5.0]
  def change
    add_reference :cctps, :scale_modular_house, foreign_key: true
  end
end
