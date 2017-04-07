class CladdingsController < ApplicationController
  
  before_action :set_cladding, only: [:update, :show, :edit, :destroy]
  authorize_resource
  
  def index
    @claddings = Cladding.all
  end

  def show
  end

  def update
    @cladding.update(cladding_params)
    redirect_to claddings_path, success: 'Le bardage a bien été modifié'
  end

  def destroy
    @cladding.destroy
    redirect_to claddings_path, success: 'Le bardage a bien été supprimé'
  end

  def new
    @cladding = Cladding.new
  end

  def edit
  end

  def create
    @cladding = Cladding.create(cladding_params)
    redirect_to claddings_path, success: 'Le bardage a bien été créé'
  end
  
  private
    
    def cladding_params
      params.require(:cladding).permit(:thicknessCladdings, :priceCladdings, :claddingStock)
    end
    
    def set_client
      @cladding = Cladding.find(params[:id])
    end
end
