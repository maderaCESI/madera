class AddOrderQuoteClientToPayment < ActiveRecord::Migration[5.0]
  def change
    add_reference :payments, :orderQuoteClient, foreign_key: true
  end
end
