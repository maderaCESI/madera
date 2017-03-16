class AddComponentStockToComponent < ActiveRecord::Migration[5.0]
  def change
    add_column :components, :componentStock, :integer
  end
end
