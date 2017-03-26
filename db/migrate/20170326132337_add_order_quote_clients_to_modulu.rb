class AddOrderQuoteClientsToModulu < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_quote_clients, :modulu, foreign_key: true
  end
end
