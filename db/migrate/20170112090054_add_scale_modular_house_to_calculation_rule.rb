class AddScaleModularHouseToCalculationRule < ActiveRecord::Migration[5.0]
  def change
    add_reference :scale_modular_houses, :calculation_rule, foreign_key: true
  end
end
