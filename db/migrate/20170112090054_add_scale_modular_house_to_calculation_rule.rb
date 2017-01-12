class AddScaleModularHouseToCalculationRule < ActiveRecord::Migration[5.0]
  def change
    add_reference :calculation_rules, :scale_modular_house, foreign_key: true
  end
end
