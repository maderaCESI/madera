class InsulatingsController < ApplicationController
  
    before_action :set_insulating, only: [:update, :show, :edit, :destroy]
    authorize_resource
    
  def index
    @insulatings = Insulating.all
  end

  def show
  end

  def update
    @insulating.update(client_params)
    redirect_to insulatings_path, success: 'Cet isolant a bien été modifié'
  end

  def destroy
    @insulating.destroy
    redirect_to insulatings_path, success: 'Cet isolant a bien été supprimé'
  end

  def new
    @insulating = Insulating.new
  end

  def edit
  end

  def create
    @insulating = Insulating.create(insulating_params)
    redirect_to insulatings_path, success: 'Un isolant a bien été créé'
  end
  
  private
    
  def insulating_params
    params.require(:insulating).permit(:insulatingName, :insulatingThickness, :priceInsulating, :insulatingStock)
  end
    
  def set_insulating
    @insulating = Insulating.find(params[:id])
  end
  
end
