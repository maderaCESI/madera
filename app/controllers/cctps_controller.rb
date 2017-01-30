class CctpsController < ApplicationController
  
  before_action :set_cctp, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  def index
    @cctps = Cctp.all
  end

  def show
    
  end

  def update
    @cctp.update(cctp_params)
    redirect_to cctps_path, success: 'Le CCTP a bien été modifié'
  end

  def destroy
    @cctp.destroy
    redirect_to cctps_path, success: 'Le CCTP a bien été supprimé'
  end

  def new
    @cctp = Cctp.new
  end

  def edit
  end

  def create
    @cctp = Cctp.create(cctp_params)
    redirect_to cctps_path, success: 'Le client a bien été créé'
  end
  
  private
    
  def cctp_params
    params.require(:cctp).permit(:cctpcharacteristics)
  end
    
  def set_cctp
    @cctp = Cctp.find(params[:id])
  end
end
