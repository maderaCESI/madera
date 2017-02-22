class AddPriceToComponent < ActiveRecord::Migration[5.0]
  def change
    add_column :components, :priceComponent, :decimal
  end
end
