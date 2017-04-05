class CreateJoinTableModulusOrderQuoteClients < ActiveRecord::Migration[5.0]
  def change
        create_join_table :order_quote_clients, :modulus do |t|
      # t.index [:order_quote_client_id, :modulu_id]
      # t.index [:modulu_id, :order_quote_client_id]
     end
  end
end
