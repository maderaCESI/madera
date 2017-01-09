class CreateCalculationRules < ActiveRecord::Migration[5.0]
  def change
    create_table :calculation_rules do |t|
      t.string :woodFrameConception
    end
  end
end
