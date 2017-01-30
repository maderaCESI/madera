class PaymentsController < ApplicationController
  
    before_action :set_payment, only: [:update, :show, :edit, :destroy]
    authorize_resource
    
  def index
    @payments = Payment.all
  end

  def show
  end

  def update
    @payment.update(payment_params)
    redirect_to payments_path, success: 'Le paiement a bien été modifié'
  end

  def destroy
    @payment.destroy
    redirect_to payments_path, success: 'Le paiement a bien été supprimé'
  end

  def new
    @payment = Payment.new
  end

  def edit
  end

  def create
    @payment = Payment.create(payment_params)
    redirect_to payments_path, success: 'Le paiement a bien été créé'
  end
  
  private
    
  def payment_params
      params.require(:payment).permit(:paymentStep, :sumToUnlock)
  end
    
  def set_payment
      @payment = Payment.find(params[:id])
  end
    
end
