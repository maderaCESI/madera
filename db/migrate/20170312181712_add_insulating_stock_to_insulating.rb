class AddInsulatingStockToInsulating < ActiveRecord::Migration[5.0]
  def change
    add_column :insulatings, :insulatingStock, :integer
  end
end
