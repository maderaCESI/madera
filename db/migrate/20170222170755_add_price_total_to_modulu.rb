class AddPriceTotalToModulu < ActiveRecord::Migration[5.0]
  def change
    add_column :modulus, :priceTotal, :decimal
  end
end
