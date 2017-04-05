class OrderQuoteClientsController < ApplicationController
  before_action :set_order, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  def index
    @orders = OrderQuoteClient.includes(:client, :modulus, :scale_modular_house).all
    
  end

  def show
      respond_to do |format|
      format.html
      format.pdf do
      render pdf: "file_name"   # Excluding ".pdf" extension.
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
    @order.modulus.build
  end

  def edit
  end

  def create
    @order = OrderQuoteClient.create(order_params)
    redirect_to order_quote_clients_path, success: 'Le devis client a bien été créé'
  end
  
  
  private
    def order_params
      params.require(:order_quote_client).permit(:orderName, :stateOrder, :priceTotal, :stateExpedition, :client_id, :scale_modular_house_id, :project_modular_house_id, modulus_attributes: Modulu.attribute_names + ["_destroy"])
    end
    
    def set_order
      @order = OrderQuoteClient.find(params[:id])
    end
end
