class AddCladdingStockToCladding < ActiveRecord::Migration[5.0]
  def change
    add_column :claddings, :claddingStock, :integer
  end
end
