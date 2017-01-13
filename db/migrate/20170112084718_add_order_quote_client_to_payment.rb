class AddOrderQuoteClientToPayment < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_quote_clients, :payments, foreign_key: true
  end
end
