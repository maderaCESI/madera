class AddPriceToCladding < ActiveRecord::Migration[5.0]
  def change
    add_column :claddings, :priceCladdings, :decimal
  end
end
