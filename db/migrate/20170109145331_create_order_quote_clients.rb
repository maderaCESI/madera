class CreateOrderQuoteClients < ActiveRecord::Migration[5.0]
  def change
    create_table :order_quote_clients do |t|
      t.string :stateOrder
      t.float :priceTotal
      t.string :stateExpedition
    end
  end
end
