class AddOrderQuoteClientsToScaleModularHouse < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_quote_clients, :scale_modular_house, foreign_key: true
  end
end
