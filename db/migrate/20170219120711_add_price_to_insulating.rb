class AddPriceToInsulating < ActiveRecord::Migration[5.0]
  def change
    add_column :insulatings, :priceInsulating, :decimal
  end
end
