class CreateJoinTableOrderQuoteClientsModulus < ActiveRecord::Migration[5.0]
  def change
   create_table :order_quote_clients_modulus, id: false do |t|
    t.belongs_to :order_quote_client, index: true
    t.belongs_to :modulu, index: true
    end 
  end
end
