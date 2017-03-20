class AddOrderNameToOrderQuoteClient < ActiveRecord::Migration[5.0]
  def change
     add_column :order_quote_clients, :orderName, :string
  end
end
