class CreateJoinTableOrderQuoteClientsProjectModularHouses < ActiveRecord::Migration[5.0]
  def change
    create_join_table :order_quote_clients, :project_modular_houses do |t|
      # t.index [:order_quote_client_id, :project_modular_house_id]
      # t.index [:project_modular_house_id, :order_quote_client_id]
    end
  end
end
