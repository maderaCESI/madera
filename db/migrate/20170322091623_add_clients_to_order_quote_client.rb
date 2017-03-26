class AddClientsToOrderQuoteClient < ActiveRecord::Migration[5.0]
  def change
    add_reference :clients, :order_quote_client, foreign_key: true
  end
end
