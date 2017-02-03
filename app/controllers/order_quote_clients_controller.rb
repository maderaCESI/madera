class OrderQuoteClientsController < ApplicationController
  before_action :set_order, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  def index
    @orders = OrderQuoteClient.all
  end

  def show
    
  end

  def update
    @order.update(order_params)
    redirect_to order_quote_clients_path, success: 'Le devis client a bien été modifié'
  end

  def destroy
    @order.destroy
    redirect_to order_quote_clients_path, success: 'Le devis client a bien été supprimé'
  end

  def new
    @order = OrderQuoteClient.new
  end

  def edit
  end

  def create
    @order = OrderQuoteClient.create(order_params)
    redirect_to order_quote_clients_path, success: 'Le devis client a bien été créé'
  end
  
  
  private
    def order_params
      params.require(:order_quote_client).permit(:stateOrder, :priceTotal, :stateExpedition)
    end
    
    def set_order
      @order = OrderQuoteClient.find(params[:id])
    end
end
