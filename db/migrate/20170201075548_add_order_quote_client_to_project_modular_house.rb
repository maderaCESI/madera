class AddOrderQuoteClientToProjectModularHouse < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_quote_clients, :project_modular_houses, foreign_key: true
  end
end
