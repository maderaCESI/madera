class AddPriceToScaleModularHouse < ActiveRecord::Migration[5.0]
  def change
    add_column :scale_modular_houses, :price, :decimal
  end
end
