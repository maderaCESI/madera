class AddOrderQuoteClientsToClient < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_quote_clients, :client, foreign_key: true
  end
end
